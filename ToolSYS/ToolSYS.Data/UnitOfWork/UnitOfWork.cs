using Oracle.ManagedDataAccess.Client;

namespace ToolSYS.Data.UnitOfWork;

public interface IUnitOfWork : IDisposable
{
    IRentalData Rentals { get; }
    IRentalItemData RentalItems { get; }
    void BeginTransaction();
    void Commit();
    void Rollback();
}

public class UnitOfWork : IUnitOfWork
{
    private readonly OracleConnection _connection;
    private OracleTransaction? _transaction;

    public IRentalData Rentals { get; }
    public IRentalItemData RentalItems { get; }

    public UnitOfWork(string connectionString)
    {
        _connection = new OracleConnection(connectionString);
        _connection.Open();

        // Initialise repositories with the shared connection
        Rentals = new RentalData(_connection);
        RentalItems = new RentalItemData(_connection);
    }

    public void BeginTransaction()
    {
        _transaction = _connection.BeginTransaction();

        // Assign the transaction to repositories
        ((RentalData)Rentals).SetTransaction(_transaction);
        ((RentalItemData)RentalItems).SetTransaction(_transaction);
    }

    public void Commit()
    {
        try
        {
            _transaction?.Commit();
        }
        catch
        {
            _transaction?.Rollback();
            throw;
        }
        finally
        {
            _transaction?.Dispose();
            _transaction = null;
        }
    }

    public void Rollback()
    {
        _transaction?.Rollback();
        _transaction?.Dispose();
        _transaction = null;
    }

    public void Dispose()
    {
        _transaction?.Dispose();
        _connection.Close();
        _connection.Dispose();
    }
}