
warn: 6/8/2025 11:02:53.267 CoreEventId.SensitiveDataLoggingEnabledWarning[10400] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Sensitive data logging is enabled. Log entries and exception messages may include sensitive application data; this mode should only be enabled during development.
dbug: 6/8/2025 11:02:53.517 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.16 initialized 'BookAddressContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.15' with options: SensitiveDataLoggingEnabled 
dbug: 6/8/2025 11:02:53.598 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<User>()
          .FirstOrDefault(u => u.NormalizedUserName == __normalizedUserName_0)'
dbug: 6/8/2025 11:02:53.794 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleOrDefaultAsync<User>(
          asyncEnumerable: new SingleQueryingEnumerable<User>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> Dictionary<IProperty, int> { [Property: User.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: User.AccessFailedCount (int) Required, 1], [Property: User.ConcurrencyStamp (string) Concurrency, 2], [Property: User.Email (string) MaxLength(256), 3], [Property: User.EmailConfirmed (bool) Required, 4], [Property: User.LockoutEnabled (bool) Required, 5], [Property: User.LockoutEnd (DateTimeOffset?), 6], [Property: User.NormalizedEmail (string) Index MaxLength(256), 7], [Property: User.NormalizedUserName (string) Index MaxLength(256), 8], [Property: User.PasswordHash (string), 9], [Property: User.PhoneNumber (string), 10], [Property: User.PhoneNumberConfirmed (bool) Required, 11], [Property: User.SecurityStamp (string), 12], [Property: User.TwoFactorEnabled (bool) Required, 13], [Property: User.UserName (string) MaxLength(256), 14] }
                  SELECT TOP(1) a.Id, a.AccessFailedCount, a.ConcurrencyStamp, a.Email, a.EmailConfirmed, a.LockoutEnabled, a.LockoutEnd, a.NormalizedEmail, a.NormalizedUserName, a.PasswordHash, a.PhoneNumber, a.PhoneNumberConfirmed, a.SecurityStamp, a.TwoFactorEnabled, a.UserName
                  FROM AspNetUsers AS a
                  WHERE a.NormalizedUserName == @__normalizedUserName_0), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, User>, 
              BookAddess.DAL.Context.BookAddressContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 6/8/2025 11:02:53.843 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 6/8/2025 11:02:53.869 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (24ms).
dbug: 6/8/2025 11:02:53.875 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:54.325 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:54.331 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:02:54.338 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (6ms).
dbug: 6/8/2025 11:02:54.354 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (24ms).
dbug: 6/8/2025 11:02:54.367 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__normalizedUserName_0='MARWAGHONEM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(1) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedUserName] = @__normalizedUserName_0
info: 6/8/2025 11:02:55.075 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (707ms) [Parameters=[@__normalizedUserName_0='MARWAGHONEM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(1) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedUserName] = @__normalizedUserName_0
dbug: 6/8/2025 11:02:55.090 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.098 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 18ms reading results.
dbug: 6/8/2025 11:02:55.102 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.110 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (7ms).
dbug: 6/8/2025 11:02:55.116 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<User>()
          .SingleOrDefault(u => u.NormalizedEmail == __normalizedEmail_0)'
dbug: 6/8/2025 11:02:55.126 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleOrDefaultAsync<User>(
          asyncEnumerable: new SingleQueryingEnumerable<User>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> Dictionary<IProperty, int> { [Property: User.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: User.AccessFailedCount (int) Required, 1], [Property: User.ConcurrencyStamp (string) Concurrency, 2], [Property: User.Email (string) MaxLength(256), 3], [Property: User.EmailConfirmed (bool) Required, 4], [Property: User.LockoutEnabled (bool) Required, 5], [Property: User.LockoutEnd (DateTimeOffset?), 6], [Property: User.NormalizedEmail (string) Index MaxLength(256), 7], [Property: User.NormalizedUserName (string) Index MaxLength(256), 8], [Property: User.PasswordHash (string), 9], [Property: User.PhoneNumber (string), 10], [Property: User.PhoneNumberConfirmed (bool) Required, 11], [Property: User.SecurityStamp (string), 12], [Property: User.TwoFactorEnabled (bool) Required, 13], [Property: User.UserName (string) MaxLength(256), 14] }
                  SELECT TOP(2) a.Id, a.AccessFailedCount, a.ConcurrencyStamp, a.Email, a.EmailConfirmed, a.LockoutEnabled, a.LockoutEnd, a.NormalizedEmail, a.NormalizedUserName, a.PasswordHash, a.PhoneNumber, a.PhoneNumberConfirmed, a.SecurityStamp, a.TwoFactorEnabled, a.UserName
                  FROM AspNetUsers AS a
                  WHERE a.NormalizedEmail == @__normalizedEmail_0), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, User>, 
              BookAddess.DAL.Context.BookAddressContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 6/8/2025 11:02:55.129 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.131 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.132 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:02:55.133 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:02:55.133 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (1ms).
dbug: 6/8/2025 11:02:55.134 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__normalizedEmail_0='MARWAGHONEM@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
info: 6/8/2025 11:02:55.234 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (92ms) [Parameters=[@__normalizedEmail_0='MARWAGHONEM@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
dbug: 6/8/2025 11:02:55.235 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.236 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 2ms reading results.
dbug: 6/8/2025 11:02:55.238 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.240 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (2ms).
dbug: 6/8/2025 11:02:55.266 CoreEventId.ValueGenerated[10808] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      'BookAddressContext' generated value '000bd0b0-590d-4c8d-258b-08dda662e010' for the property 'User.Id'.
dbug: 6/8/2025 11:02:55.395 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'User' entity with key '{Id: 000bd0b0-590d-4c8d-258b-08dda662e010}'.
dbug: 6/8/2025 11:02:55.404 CoreEventId.SaveChangesStarting[10004] (Microsoft.EntityFrameworkCore.Update) 
      SaveChanges starting for 'BookAddressContext'.
dbug: 6/8/2025 11:02:55.411 CoreEventId.DetectChangesStarting[10800] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      DetectChanges starting for 'BookAddressContext'.
dbug: 6/8/2025 11:02:55.443 CoreEventId.DetectChangesCompleted[10801] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      DetectChanges completed for 'BookAddressContext'.
dbug: 6/8/2025 11:02:55.502 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.503 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.507 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:02:55.507 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:02:55.508 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (1ms).
dbug: 6/8/2025 11:02:55.510 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@p0='000bd0b0-590d-4c8d-258b-08dda662e010', @p1='0', @p2='77d09e42-93b2-48b4-a4bb-36651cd9a2bb' (Size = 4000), @p3='MarwaGhonem@gmail.com' (Size = 256), @p4='False', @p5='True', @p6=NULL (DbType = DateTimeOffset), @p7='MARWAGHONEM@GMAIL.COM' (Size = 256), @p8='MARWAGHONEM' (Size = 256), @p9='AQAAAAIAAYagAAAAECcJvnpvqANh2tCaWtVKq0E7MIChGIdqxgFxUbz3jCjEWXG9Nqhf1Tik1EKWMTWiLA==' (Size = 4000), @p10=NULL (Size = 4000), @p11='False', @p12='ZLW4FWPOKCIVEWBAJCYQHZTFXOGGHLPI' (Size = 4000), @p13='False', @p14='MarwaGhonem' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SET IMPLICIT_TRANSACTIONS OFF;
      SET NOCOUNT ON;
      INSERT INTO [AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName])
      VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12, @p13, @p14);
info: 6/8/2025 11:02:55.595 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (80ms) [Parameters=[@p0='000bd0b0-590d-4c8d-258b-08dda662e010', @p1='0', @p2='77d09e42-93b2-48b4-a4bb-36651cd9a2bb' (Size = 4000), @p3='MarwaGhonem@gmail.com' (Size = 256), @p4='False', @p5='True', @p6=NULL (DbType = DateTimeOffset), @p7='MARWAGHONEM@GMAIL.COM' (Size = 256), @p8='MARWAGHONEM' (Size = 256), @p9='AQAAAAIAAYagAAAAECcJvnpvqANh2tCaWtVKq0E7MIChGIdqxgFxUbz3jCjEWXG9Nqhf1Tik1EKWMTWiLA==' (Size = 4000), @p10=NULL (Size = 4000), @p11='False', @p12='ZLW4FWPOKCIVEWBAJCYQHZTFXOGGHLPI' (Size = 4000), @p13='False', @p14='MarwaGhonem' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SET IMPLICIT_TRANSACTIONS OFF;
      SET NOCOUNT ON;
      INSERT INTO [AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName])
      VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12, @p13, @p14);
dbug: 6/8/2025 11:02:55.599 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.600 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 3ms reading results.
dbug: 6/8/2025 11:02:55.602 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.603 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:02:55.609 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'User' entity with key '{Id: 000bd0b0-590d-4c8d-258b-08dda662e010}' tracked by 'BookAddressContext' changed state from 'Added' to 'Unchanged'.
dbug: 6/8/2025 11:02:55.611 CoreEventId.SaveChangesCompleted[10005] (Microsoft.EntityFrameworkCore.Update) 
      SaveChanges completed for 'BookAddressContext' with 1 entities written to the database.
dbug: 6/8/2025 11:02:55.626 CoreEventId.ValueGenerated[10808] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      'BookAddressContext' generated temporary value '-2147482647' for the property 'IdentityUserClaim.Id'.
dbug: 6/8/2025 11:02:55.656 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: -2147482647}'.
dbug: 6/8/2025 11:02:55.659 CoreEventId.ValueGenerated[10808] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      'BookAddressContext' generated temporary value '-2147482646' for the property 'IdentityUserClaim.Id'.
dbug: 6/8/2025 11:02:55.662 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: -2147482646}'.
dbug: 6/8/2025 11:02:55.666 CoreEventId.ValueGenerated[10808] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      'BookAddressContext' generated temporary value '-2147482645' for the property 'IdentityUserClaim.Id'.
dbug: 6/8/2025 11:02:55.668 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: -2147482645}'.
dbug: 6/8/2025 11:02:55.727 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.729 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.729 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:02:55.730 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:02:55.730 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:02:55.730 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__normalizedUserName_0='MARWAGHONEM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(1) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedUserName] = @__normalizedUserName_0
info: 6/8/2025 11:02:55.742 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (5ms) [Parameters=[@__normalizedUserName_0='MARWAGHONEM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(1) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedUserName] = @__normalizedUserName_0
dbug: 6/8/2025 11:02:55.752 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.752 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 7ms reading results.
dbug: 6/8/2025 11:02:55.753 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.753 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:02:55.756 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.757 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.757 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:02:55.757 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:02:55.758 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:02:55.758 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__normalizedEmail_0='MARWAGHONEM@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
info: 6/8/2025 11:02:55.770 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (6ms) [Parameters=[@__normalizedEmail_0='MARWAGHONEM@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
dbug: 6/8/2025 11:02:55.772 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.774 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 2ms reading results.
dbug: 6/8/2025 11:02:55.775 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.776 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:02:55.785 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'User' entity with key '{Id: 000bd0b0-590d-4c8d-258b-08dda662e010}' tracked by 'BookAddressContext' changed state from 'Unchanged' to 'Modified'.
dbug: 6/8/2025 11:02:55.785 CoreEventId.SaveChangesStarting[10004] (Microsoft.EntityFrameworkCore.Update) 
      SaveChanges starting for 'BookAddressContext'.
dbug: 6/8/2025 11:02:55.786 CoreEventId.DetectChangesStarting[10800] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      DetectChanges starting for 'BookAddressContext'.
dbug: 6/8/2025 11:02:55.796 CoreEventId.DetectChangesCompleted[10801] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      DetectChanges completed for 'BookAddressContext'.
dbug: 6/8/2025 11:02:55.819 RelationalEventId.BatchReadyForExecution[20700] (Microsoft.EntityFrameworkCore.Update) 
      Executing 4 update commands as a batch.
dbug: 6/8/2025 11:02:55.821 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.825 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:55.829 RelationalEventId.TransactionStarting[20209] (Microsoft.EntityFrameworkCore.Database.Transaction) 
      Beginning transaction with isolation level 'Unspecified'.
dbug: 6/8/2025 11:02:55.835 RelationalEventId.TransactionStarted[20200] (Microsoft.EntityFrameworkCore.Database.Transaction) 
      Began transaction with isolation level 'ReadCommitted'.
dbug: 6/8/2025 11:02:55.836 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:02:55.837 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:02:55.838 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (2ms).
dbug: 6/8/2025 11:02:55.839 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@p0='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name' (Size = 4000), @p1='MarwaGhonem' (Size = 4000), @p2='000bd0b0-590d-4c8d-258b-08dda662e010', @p3='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier' (Size = 4000), @p4='MarwaGhonem' (Size = 4000), @p5='000bd0b0-590d-4c8d-258b-08dda662e010', @p6='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress' (Size = 4000), @p7='MarwaGhonem@gmail.com' (Size = 4000), @p8='000bd0b0-590d-4c8d-258b-08dda662e010', @p23='000bd0b0-590d-4c8d-258b-08dda662e010', @p9='0', @p10='72ee2cd0-660c-4615-9ab7-382c0551a2af' (Size = 4000), @p24='77d09e42-93b2-48b4-a4bb-36651cd9a2bb' (Size = 4000), @p11='MarwaGhonem@gmail.com' (Size = 256), @p12='False', @p13='True', @p14=NULL (DbType = DateTimeOffset), @p15='MARWAGHONEM@GMAIL.COM' (Size = 256), @p16='MARWAGHONEM' (Size = 256), @p17='AQAAAAIAAYagAAAAECcJvnpvqANh2tCaWtVKq0E7MIChGIdqxgFxUbz3jCjEWXG9Nqhf1Tik1EKWMTWiLA==' (Size = 4000), @p18=NULL (Size = 4000), @p19='False', @p20='ZLW4FWPOKCIVEWBAJCYQHZTFXOGGHLPI' (Size = 4000), @p21='False', @p22='MarwaGhonem' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SET NOCOUNT ON;
      MERGE [AspNetUserClaims] USING (
      VALUES (@p0, @p1, @p2, 0),
      (@p3, @p4, @p5, 1),
      (@p6, @p7, @p8, 2)) AS i ([ClaimType], [ClaimValue], [UserId], _Position) ON 1=0
      WHEN NOT MATCHED THEN
      INSERT ([ClaimType], [ClaimValue], [UserId])
      VALUES (i.[ClaimType], i.[ClaimValue], i.[UserId])
      OUTPUT INSERTED.[Id], i._Position;
      UPDATE [AspNetUsers] SET [AccessFailedCount] = @p9, [ConcurrencyStamp] = @p10, [Email] = @p11, [EmailConfirmed] = @p12, [LockoutEnabled] = @p13, [LockoutEnd] = @p14, [NormalizedEmail] = @p15, [NormalizedUserName] = @p16, [PasswordHash] = @p17, [PhoneNumber] = @p18, [PhoneNumberConfirmed] = @p19, [SecurityStamp] = @p20, [TwoFactorEnabled] = @p21, [UserName] = @p22
      OUTPUT 1
      WHERE [Id] = @p23 AND [ConcurrencyStamp] = @p24;
info: 6/8/2025 11:02:56.253 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (397ms) [Parameters=[@p0='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name' (Size = 4000), @p1='MarwaGhonem' (Size = 4000), @p2='000bd0b0-590d-4c8d-258b-08dda662e010', @p3='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier' (Size = 4000), @p4='MarwaGhonem' (Size = 4000), @p5='000bd0b0-590d-4c8d-258b-08dda662e010', @p6='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress' (Size = 4000), @p7='MarwaGhonem@gmail.com' (Size = 4000), @p8='000bd0b0-590d-4c8d-258b-08dda662e010', @p23='000bd0b0-590d-4c8d-258b-08dda662e010', @p9='0', @p10='72ee2cd0-660c-4615-9ab7-382c0551a2af' (Size = 4000), @p24='77d09e42-93b2-48b4-a4bb-36651cd9a2bb' (Size = 4000), @p11='MarwaGhonem@gmail.com' (Size = 256), @p12='False', @p13='True', @p14=NULL (DbType = DateTimeOffset), @p15='MARWAGHONEM@GMAIL.COM' (Size = 256), @p16='MARWAGHONEM' (Size = 256), @p17='AQAAAAIAAYagAAAAECcJvnpvqANh2tCaWtVKq0E7MIChGIdqxgFxUbz3jCjEWXG9Nqhf1Tik1EKWMTWiLA==' (Size = 4000), @p18=NULL (Size = 4000), @p19='False', @p20='ZLW4FWPOKCIVEWBAJCYQHZTFXOGGHLPI' (Size = 4000), @p21='False', @p22='MarwaGhonem' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SET NOCOUNT ON;
      MERGE [AspNetUserClaims] USING (
      VALUES (@p0, @p1, @p2, 0),
      (@p3, @p4, @p5, 1),
      (@p6, @p7, @p8, 2)) AS i ([ClaimType], [ClaimValue], [UserId], _Position) ON 1=0
      WHEN NOT MATCHED THEN
      INSERT ([ClaimType], [ClaimValue], [UserId])
      VALUES (i.[ClaimType], i.[ClaimValue], i.[UserId])
      OUTPUT INSERTED.[Id], i._Position;
      UPDATE [AspNetUsers] SET [AccessFailedCount] = @p9, [ConcurrencyStamp] = @p10, [Email] = @p11, [EmailConfirmed] = @p12, [LockoutEnabled] = @p13, [LockoutEnd] = @p14, [NormalizedEmail] = @p15, [NormalizedUserName] = @p16, [PasswordHash] = @p17, [PhoneNumber] = @p18, [PhoneNumberConfirmed] = @p19, [SecurityStamp] = @p20, [TwoFactorEnabled] = @p21, [UserName] = @p22
      OUTPUT 1
      WHERE [Id] = @p23 AND [ConcurrencyStamp] = @p24;
dbug: 6/8/2025 11:02:56.265 CoreEventId.ForeignKeyChangeDetected[10803] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The foreign key property 'IdentityUserClaim.Id' was detected as changed from '-2147482647' to '1' for entity with key '{Id: 1}'.
dbug: 6/8/2025 11:02:56.269 CoreEventId.ForeignKeyChangeDetected[10803] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The foreign key property 'IdentityUserClaim.Id' was detected as changed from '-2147482646' to '2' for entity with key '{Id: 2}'.
dbug: 6/8/2025 11:02:56.270 CoreEventId.ForeignKeyChangeDetected[10803] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The foreign key property 'IdentityUserClaim.Id' was detected as changed from '-2147482645' to '3' for entity with key '{Id: 3}'.
dbug: 6/8/2025 11:02:56.277 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:56.278 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 24ms reading results.
dbug: 6/8/2025 11:02:56.282 RelationalEventId.TransactionCommitting[20210] (Microsoft.EntityFrameworkCore.Database.Transaction) 
      Committing transaction.
dbug: 6/8/2025 11:02:56.286 RelationalEventId.TransactionCommitted[20202] (Microsoft.EntityFrameworkCore.Database.Transaction) 
      Committed transaction.
dbug: 6/8/2025 11:02:56.290 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:56.290 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:02:56.294 RelationalEventId.TransactionDisposed[20204] (Microsoft.EntityFrameworkCore.Database.Transaction) 
      Disposing transaction.
dbug: 6/8/2025 11:02:56.298 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'IdentityUserClaim' entity with key '{Id: 1}' tracked by 'BookAddressContext' changed state from 'Added' to 'Unchanged'.
dbug: 6/8/2025 11:02:56.298 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'IdentityUserClaim' entity with key '{Id: 2}' tracked by 'BookAddressContext' changed state from 'Added' to 'Unchanged'.
dbug: 6/8/2025 11:02:56.299 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'IdentityUserClaim' entity with key '{Id: 3}' tracked by 'BookAddressContext' changed state from 'Added' to 'Unchanged'.
dbug: 6/8/2025 11:02:56.299 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'User' entity with key '{Id: 000bd0b0-590d-4c8d-258b-08dda662e010}' tracked by 'BookAddressContext' changed state from 'Modified' to 'Unchanged'.
dbug: 6/8/2025 11:02:56.300 CoreEventId.SaveChangesCompleted[10005] (Microsoft.EntityFrameworkCore.Update) 
      SaveChanges completed for 'BookAddressContext' with 4 entities written to the database.
dbug: 6/8/2025 11:02:56.329 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'BookAddressContext' disposed.
dbug: 6/8/2025 11:02:56.345 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:02:56.355 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (9ms).
dbug: 6/8/2025 11:03:24.292 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.16 initialized 'BookAddressContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.15' with options: SensitiveDataLoggingEnabled 
dbug: 6/8/2025 11:03:24.294 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 6/8/2025 11:03:24.296 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (1ms).
dbug: 6/8/2025 11:03:24.296 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:03:24.297 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:03:24.297 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:03:24.297 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:03:24.298 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:03:24.298 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__normalizedEmail_0='MARWAGHONEM@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
info: 6/8/2025 11:03:24.308 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (2ms) [Parameters=[@__normalizedEmail_0='MARWAGHONEM@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
dbug: 6/8/2025 11:03:24.311 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'User' entity with key '{Id: 000bd0b0-590d-4c8d-258b-08dda662e010}'.
dbug: 6/8/2025 11:03:24.312 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:03:24.313 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 3ms reading results.
dbug: 6/8/2025 11:03:24.313 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:03:24.314 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:03:24.412 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<IdentityUserClaim<Guid>>()
          .Where(uc => uc.UserId.Equals(__user_Id_0))
          .Select(c => c.ToClaim())'
dbug: 6/8/2025 11:03:24.443 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => new SingleQueryingEnumerable<Claim>(
          (RelationalQueryContext)queryContext, 
          RelationalCommandCache.QueryExpression(
              Client Projections:
                  0 -> Dictionary<IProperty, int> { [Property: IdentityUserClaim<Guid>.Id (int) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: IdentityUserClaim<Guid>.ClaimType (string), 1], [Property: IdentityUserClaim<Guid>.ClaimValue (string), 2], [Property: IdentityUserClaim<Guid>.UserId (Guid) Required FK Index, 3] }
              SELECT a.Id, a.ClaimType, a.ClaimValue, a.UserId
              FROM AspNetUserClaims AS a
              WHERE a.UserId == @__user_Id_0), 
          null, 
          Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, Claim>, 
          BookAddess.DAL.Context.BookAddressContext, 
          False, 
          False, 
          True
      )'
dbug: 6/8/2025 11:03:24.445 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:03:24.446 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:03:24.447 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:03:24.447 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:03:24.448 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (1ms).
dbug: 6/8/2025 11:03:24.449 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__user_Id_0='000bd0b0-590d-4c8d-258b-08dda662e010'], CommandType='Text', CommandTimeout='30']
      SELECT [a].[Id], [a].[ClaimType], [a].[ClaimValue], [a].[UserId]
      FROM [AspNetUserClaims] AS [a]
      WHERE [a].[UserId] = @__user_Id_0
info: 6/8/2025 11:03:24.517 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (63ms) [Parameters=[@__user_Id_0='000bd0b0-590d-4c8d-258b-08dda662e010'], CommandType='Text', CommandTimeout='30']
      SELECT [a].[Id], [a].[ClaimType], [a].[ClaimValue], [a].[UserId]
      FROM [AspNetUserClaims] AS [a]
      WHERE [a].[UserId] = @__user_Id_0
dbug: 6/8/2025 11:03:24.519 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: 1}'.
dbug: 6/8/2025 11:03:24.521 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: 2}'.
dbug: 6/8/2025 11:03:24.524 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: 3}'.
dbug: 6/8/2025 11:03:24.525 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:03:24.525 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 7ms reading results.
dbug: 6/8/2025 11:03:24.526 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:03:24.526 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:03:24.586 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'BookAddressContext' disposed.
dbug: 6/8/2025 11:03:24.588 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:03:24.590 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (1ms).
warn: 6/8/2025 11:38:04.896 CoreEventId.SensitiveDataLoggingEnabledWarning[10400] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Sensitive data logging is enabled. Log entries and exception messages may include sensitive application data; this mode should only be enabled during development.
dbug: 6/8/2025 11:38:05.073 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.16 initialized 'BookAddressContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.15' with options: SensitiveDataLoggingEnabled 
dbug: 6/8/2025 11:38:05.148 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<User>()
          .FirstOrDefault(u => u.NormalizedUserName == __normalizedUserName_0)'
dbug: 6/8/2025 11:38:05.336 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleOrDefaultAsync<User>(
          asyncEnumerable: new SingleQueryingEnumerable<User>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> Dictionary<IProperty, int> { [Property: User.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: User.AccessFailedCount (int) Required, 1], [Property: User.ConcurrencyStamp (string) Concurrency, 2], [Property: User.Email (string) MaxLength(256), 3], [Property: User.EmailConfirmed (bool) Required, 4], [Property: User.LockoutEnabled (bool) Required, 5], [Property: User.LockoutEnd (DateTimeOffset?), 6], [Property: User.NormalizedEmail (string) Index MaxLength(256), 7], [Property: User.NormalizedUserName (string) Index MaxLength(256), 8], [Property: User.PasswordHash (string), 9], [Property: User.PhoneNumber (string), 10], [Property: User.PhoneNumberConfirmed (bool) Required, 11], [Property: User.SecurityStamp (string), 12], [Property: User.TwoFactorEnabled (bool) Required, 13], [Property: User.UserName (string) MaxLength(256), 14] }
                  SELECT TOP(1) a.Id, a.AccessFailedCount, a.ConcurrencyStamp, a.Email, a.EmailConfirmed, a.LockoutEnabled, a.LockoutEnd, a.NormalizedEmail, a.NormalizedUserName, a.PasswordHash, a.PhoneNumber, a.PhoneNumberConfirmed, a.SecurityStamp, a.TwoFactorEnabled, a.UserName
                  FROM AspNetUsers AS a
                  WHERE a.NormalizedUserName == @__normalizedUserName_0), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, User>, 
              BookAddess.DAL.Context.BookAddressContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 6/8/2025 11:38:05.378 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 6/8/2025 11:38:05.397 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (15ms).
dbug: 6/8/2025 11:38:05.401 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.603 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.608 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:38:05.613 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (4ms).
dbug: 6/8/2025 11:38:05.621 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (14ms).
dbug: 6/8/2025 11:38:05.632 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__normalizedUserName_0='STRING' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(1) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedUserName] = @__normalizedUserName_0
info: 6/8/2025 11:38:05.680 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (46ms) [Parameters=[@__normalizedUserName_0='STRING' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(1) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedUserName] = @__normalizedUserName_0
dbug: 6/8/2025 11:38:05.693 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.702 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 17ms reading results.
dbug: 6/8/2025 11:38:05.706 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.712 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (5ms).
dbug: 6/8/2025 11:38:05.718 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<User>()
          .SingleOrDefault(u => u.NormalizedEmail == __normalizedEmail_0)'
dbug: 6/8/2025 11:38:05.727 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleOrDefaultAsync<User>(
          asyncEnumerable: new SingleQueryingEnumerable<User>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> Dictionary<IProperty, int> { [Property: User.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: User.AccessFailedCount (int) Required, 1], [Property: User.ConcurrencyStamp (string) Concurrency, 2], [Property: User.Email (string) MaxLength(256), 3], [Property: User.EmailConfirmed (bool) Required, 4], [Property: User.LockoutEnabled (bool) Required, 5], [Property: User.LockoutEnd (DateTimeOffset?), 6], [Property: User.NormalizedEmail (string) Index MaxLength(256), 7], [Property: User.NormalizedUserName (string) Index MaxLength(256), 8], [Property: User.PasswordHash (string), 9], [Property: User.PhoneNumber (string), 10], [Property: User.PhoneNumberConfirmed (bool) Required, 11], [Property: User.SecurityStamp (string), 12], [Property: User.TwoFactorEnabled (bool) Required, 13], [Property: User.UserName (string) MaxLength(256), 14] }
                  SELECT TOP(2) a.Id, a.AccessFailedCount, a.ConcurrencyStamp, a.Email, a.EmailConfirmed, a.LockoutEnabled, a.LockoutEnd, a.NormalizedEmail, a.NormalizedUserName, a.PasswordHash, a.PhoneNumber, a.PhoneNumberConfirmed, a.SecurityStamp, a.TwoFactorEnabled, a.UserName
                  FROM AspNetUsers AS a
                  WHERE a.NormalizedEmail == @__normalizedEmail_0), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, User>, 
              BookAddess.DAL.Context.BookAddressContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 6/8/2025 11:38:05.731 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.732 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.734 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:38:05.736 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (2ms).
dbug: 6/8/2025 11:38:05.738 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (4ms).
dbug: 6/8/2025 11:38:05.739 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__normalizedEmail_0='STRING@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
info: 6/8/2025 11:38:05.750 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (5ms) [Parameters=[@__normalizedEmail_0='STRING@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
dbug: 6/8/2025 11:38:05.751 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.752 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 2ms reading results.
dbug: 6/8/2025 11:38:05.753 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.754 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:38:05.779 CoreEventId.ValueGenerated[10808] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      'BookAddressContext' generated value '2f55f886-5463-41a5-d273-08dda667ca06' for the property 'User.Id'.
dbug: 6/8/2025 11:38:05.856 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'User' entity with key '{Id: 2f55f886-5463-41a5-d273-08dda667ca06}'.
dbug: 6/8/2025 11:38:05.860 CoreEventId.SaveChangesStarting[10004] (Microsoft.EntityFrameworkCore.Update) 
      SaveChanges starting for 'BookAddressContext'.
dbug: 6/8/2025 11:38:05.865 CoreEventId.DetectChangesStarting[10800] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      DetectChanges starting for 'BookAddressContext'.
dbug: 6/8/2025 11:38:05.886 CoreEventId.DetectChangesCompleted[10801] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      DetectChanges completed for 'BookAddressContext'.
dbug: 6/8/2025 11:38:05.960 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.961 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.965 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:38:05.966 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:38:05.967 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (1ms).
dbug: 6/8/2025 11:38:05.969 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@p0='2f55f886-5463-41a5-d273-08dda667ca06', @p1='0', @p2='e48b3c90-a77e-43fa-8981-2e45fdac8d1a' (Size = 4000), @p3='string@gmail.com' (Size = 256), @p4='False', @p5='True', @p6=NULL (DbType = DateTimeOffset), @p7='STRING@GMAIL.COM' (Size = 256), @p8='STRING' (Size = 256), @p9='AQAAAAIAAYagAAAAEMBuaOzkUX8pOo2saw6jxHxde7ceyPujlCGoUUA75md14a8o/WRSqplQIHK32ovIug==' (Size = 4000), @p10=NULL (Size = 4000), @p11='False', @p12='2SF4KRNZZ4BQGNRMLV7MRUT5DXYXJ2B2' (Size = 4000), @p13='False', @p14='string' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SET IMPLICIT_TRANSACTIONS OFF;
      SET NOCOUNT ON;
      INSERT INTO [AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName])
      VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12, @p13, @p14);
info: 6/8/2025 11:38:05.983 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (10ms) [Parameters=[@p0='2f55f886-5463-41a5-d273-08dda667ca06', @p1='0', @p2='e48b3c90-a77e-43fa-8981-2e45fdac8d1a' (Size = 4000), @p3='string@gmail.com' (Size = 256), @p4='False', @p5='True', @p6=NULL (DbType = DateTimeOffset), @p7='STRING@GMAIL.COM' (Size = 256), @p8='STRING' (Size = 256), @p9='AQAAAAIAAYagAAAAEMBuaOzkUX8pOo2saw6jxHxde7ceyPujlCGoUUA75md14a8o/WRSqplQIHK32ovIug==' (Size = 4000), @p10=NULL (Size = 4000), @p11='False', @p12='2SF4KRNZZ4BQGNRMLV7MRUT5DXYXJ2B2' (Size = 4000), @p13='False', @p14='string' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SET IMPLICIT_TRANSACTIONS OFF;
      SET NOCOUNT ON;
      INSERT INTO [AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName])
      VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12, @p13, @p14);
dbug: 6/8/2025 11:38:05.987 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.988 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 4ms reading results.
dbug: 6/8/2025 11:38:05.990 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:05.991 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:38:05.997 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'User' entity with key '{Id: 2f55f886-5463-41a5-d273-08dda667ca06}' tracked by 'BookAddressContext' changed state from 'Added' to 'Unchanged'.
dbug: 6/8/2025 11:38:06.000 CoreEventId.SaveChangesCompleted[10005] (Microsoft.EntityFrameworkCore.Update) 
      SaveChanges completed for 'BookAddressContext' with 1 entities written to the database.
dbug: 6/8/2025 11:38:06.012 CoreEventId.ValueGenerated[10808] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      'BookAddressContext' generated temporary value '-2147482647' for the property 'IdentityUserClaim.Id'.
dbug: 6/8/2025 11:38:06.027 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: -2147482647}'.
dbug: 6/8/2025 11:38:06.030 CoreEventId.ValueGenerated[10808] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      'BookAddressContext' generated temporary value '-2147482646' for the property 'IdentityUserClaim.Id'.
dbug: 6/8/2025 11:38:06.031 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: -2147482646}'.
dbug: 6/8/2025 11:38:06.032 CoreEventId.ValueGenerated[10808] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      'BookAddressContext' generated temporary value '-2147482645' for the property 'IdentityUserClaim.Id'.
dbug: 6/8/2025 11:38:06.032 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: -2147482645}'.
dbug: 6/8/2025 11:38:06.038 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.039 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.039 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:38:06.040 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:38:06.040 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:38:06.040 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__normalizedUserName_0='STRING' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(1) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedUserName] = @__normalizedUserName_0
info: 6/8/2025 11:38:06.047 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (2ms) [Parameters=[@__normalizedUserName_0='STRING' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(1) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedUserName] = @__normalizedUserName_0
dbug: 6/8/2025 11:38:06.056 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.056 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 8ms reading results.
dbug: 6/8/2025 11:38:06.057 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.058 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:38:06.060 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.061 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.063 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:38:06.063 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:38:06.064 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:38:06.064 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__normalizedEmail_0='STRING@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
info: 6/8/2025 11:38:06.072 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (2ms) [Parameters=[@__normalizedEmail_0='STRING@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
dbug: 6/8/2025 11:38:06.073 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.073 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 1ms reading results.
dbug: 6/8/2025 11:38:06.074 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.074 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:38:06.079 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'User' entity with key '{Id: 2f55f886-5463-41a5-d273-08dda667ca06}' tracked by 'BookAddressContext' changed state from 'Unchanged' to 'Modified'.
dbug: 6/8/2025 11:38:06.079 CoreEventId.SaveChangesStarting[10004] (Microsoft.EntityFrameworkCore.Update) 
      SaveChanges starting for 'BookAddressContext'.
dbug: 6/8/2025 11:38:06.080 CoreEventId.DetectChangesStarting[10800] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      DetectChanges starting for 'BookAddressContext'.
dbug: 6/8/2025 11:38:06.087 CoreEventId.DetectChangesCompleted[10801] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      DetectChanges completed for 'BookAddressContext'.
dbug: 6/8/2025 11:38:06.110 RelationalEventId.BatchReadyForExecution[20700] (Microsoft.EntityFrameworkCore.Update) 
      Executing 4 update commands as a batch.
dbug: 6/8/2025 11:38:06.114 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.115 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.119 RelationalEventId.TransactionStarting[20209] (Microsoft.EntityFrameworkCore.Database.Transaction) 
      Beginning transaction with isolation level 'Unspecified'.
dbug: 6/8/2025 11:38:06.125 RelationalEventId.TransactionStarted[20200] (Microsoft.EntityFrameworkCore.Database.Transaction) 
      Began transaction with isolation level 'ReadCommitted'.
dbug: 6/8/2025 11:38:06.127 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:38:06.127 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:38:06.129 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (2ms).
dbug: 6/8/2025 11:38:06.130 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@p0='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name' (Size = 4000), @p1='string' (Size = 4000), @p2='2f55f886-5463-41a5-d273-08dda667ca06', @p3='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier' (Size = 4000), @p4='2f55f886-5463-41a5-d273-08dda667ca06' (Size = 4000), @p5='2f55f886-5463-41a5-d273-08dda667ca06', @p6='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress' (Size = 4000), @p7='string@gmail.com' (Size = 4000), @p8='2f55f886-5463-41a5-d273-08dda667ca06', @p23='2f55f886-5463-41a5-d273-08dda667ca06', @p9='0', @p10='404767e9-f2a5-4f16-a219-1f4bb9c8679e' (Size = 4000), @p24='e48b3c90-a77e-43fa-8981-2e45fdac8d1a' (Size = 4000), @p11='string@gmail.com' (Size = 256), @p12='False', @p13='True', @p14=NULL (DbType = DateTimeOffset), @p15='STRING@GMAIL.COM' (Size = 256), @p16='STRING' (Size = 256), @p17='AQAAAAIAAYagAAAAEMBuaOzkUX8pOo2saw6jxHxde7ceyPujlCGoUUA75md14a8o/WRSqplQIHK32ovIug==' (Size = 4000), @p18=NULL (Size = 4000), @p19='False', @p20='2SF4KRNZZ4BQGNRMLV7MRUT5DXYXJ2B2' (Size = 4000), @p21='False', @p22='string' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SET NOCOUNT ON;
      MERGE [AspNetUserClaims] USING (
      VALUES (@p0, @p1, @p2, 0),
      (@p3, @p4, @p5, 1),
      (@p6, @p7, @p8, 2)) AS i ([ClaimType], [ClaimValue], [UserId], _Position) ON 1=0
      WHEN NOT MATCHED THEN
      INSERT ([ClaimType], [ClaimValue], [UserId])
      VALUES (i.[ClaimType], i.[ClaimValue], i.[UserId])
      OUTPUT INSERTED.[Id], i._Position;
      UPDATE [AspNetUsers] SET [AccessFailedCount] = @p9, [ConcurrencyStamp] = @p10, [Email] = @p11, [EmailConfirmed] = @p12, [LockoutEnabled] = @p13, [LockoutEnd] = @p14, [NormalizedEmail] = @p15, [NormalizedUserName] = @p16, [PasswordHash] = @p17, [PhoneNumber] = @p18, [PhoneNumberConfirmed] = @p19, [SecurityStamp] = @p20, [TwoFactorEnabled] = @p21, [UserName] = @p22
      OUTPUT 1
      WHERE [Id] = @p23 AND [ConcurrencyStamp] = @p24;
info: 6/8/2025 11:38:06.186 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (46ms) [Parameters=[@p0='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name' (Size = 4000), @p1='string' (Size = 4000), @p2='2f55f886-5463-41a5-d273-08dda667ca06', @p3='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier' (Size = 4000), @p4='2f55f886-5463-41a5-d273-08dda667ca06' (Size = 4000), @p5='2f55f886-5463-41a5-d273-08dda667ca06', @p6='http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress' (Size = 4000), @p7='string@gmail.com' (Size = 4000), @p8='2f55f886-5463-41a5-d273-08dda667ca06', @p23='2f55f886-5463-41a5-d273-08dda667ca06', @p9='0', @p10='404767e9-f2a5-4f16-a219-1f4bb9c8679e' (Size = 4000), @p24='e48b3c90-a77e-43fa-8981-2e45fdac8d1a' (Size = 4000), @p11='string@gmail.com' (Size = 256), @p12='False', @p13='True', @p14=NULL (DbType = DateTimeOffset), @p15='STRING@GMAIL.COM' (Size = 256), @p16='STRING' (Size = 256), @p17='AQAAAAIAAYagAAAAEMBuaOzkUX8pOo2saw6jxHxde7ceyPujlCGoUUA75md14a8o/WRSqplQIHK32ovIug==' (Size = 4000), @p18=NULL (Size = 4000), @p19='False', @p20='2SF4KRNZZ4BQGNRMLV7MRUT5DXYXJ2B2' (Size = 4000), @p21='False', @p22='string' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SET NOCOUNT ON;
      MERGE [AspNetUserClaims] USING (
      VALUES (@p0, @p1, @p2, 0),
      (@p3, @p4, @p5, 1),
      (@p6, @p7, @p8, 2)) AS i ([ClaimType], [ClaimValue], [UserId], _Position) ON 1=0
      WHEN NOT MATCHED THEN
      INSERT ([ClaimType], [ClaimValue], [UserId])
      VALUES (i.[ClaimType], i.[ClaimValue], i.[UserId])
      OUTPUT INSERTED.[Id], i._Position;
      UPDATE [AspNetUsers] SET [AccessFailedCount] = @p9, [ConcurrencyStamp] = @p10, [Email] = @p11, [EmailConfirmed] = @p12, [LockoutEnabled] = @p13, [LockoutEnd] = @p14, [NormalizedEmail] = @p15, [NormalizedUserName] = @p16, [PasswordHash] = @p17, [PhoneNumber] = @p18, [PhoneNumberConfirmed] = @p19, [SecurityStamp] = @p20, [TwoFactorEnabled] = @p21, [UserName] = @p22
      OUTPUT 1
      WHERE [Id] = @p23 AND [ConcurrencyStamp] = @p24;
dbug: 6/8/2025 11:38:06.198 CoreEventId.ForeignKeyChangeDetected[10803] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The foreign key property 'IdentityUserClaim.Id' was detected as changed from '-2147482647' to '4' for entity with key '{Id: 4}'.
dbug: 6/8/2025 11:38:06.203 CoreEventId.ForeignKeyChangeDetected[10803] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The foreign key property 'IdentityUserClaim.Id' was detected as changed from '-2147482646' to '5' for entity with key '{Id: 5}'.
dbug: 6/8/2025 11:38:06.204 CoreEventId.ForeignKeyChangeDetected[10803] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The foreign key property 'IdentityUserClaim.Id' was detected as changed from '-2147482645' to '6' for entity with key '{Id: 6}'.
dbug: 6/8/2025 11:38:06.209 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.213 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 25ms reading results.
dbug: 6/8/2025 11:38:06.217 RelationalEventId.TransactionCommitting[20210] (Microsoft.EntityFrameworkCore.Database.Transaction) 
      Committing transaction.
dbug: 6/8/2025 11:38:06.222 RelationalEventId.TransactionCommitted[20202] (Microsoft.EntityFrameworkCore.Database.Transaction) 
      Committed transaction.
dbug: 6/8/2025 11:38:06.224 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.225 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:38:06.227 RelationalEventId.TransactionDisposed[20204] (Microsoft.EntityFrameworkCore.Database.Transaction) 
      Disposing transaction.
dbug: 6/8/2025 11:38:06.231 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'IdentityUserClaim' entity with key '{Id: 4}' tracked by 'BookAddressContext' changed state from 'Added' to 'Unchanged'.
dbug: 6/8/2025 11:38:06.232 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'IdentityUserClaim' entity with key '{Id: 5}' tracked by 'BookAddressContext' changed state from 'Added' to 'Unchanged'.
dbug: 6/8/2025 11:38:06.235 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'IdentityUserClaim' entity with key '{Id: 6}' tracked by 'BookAddressContext' changed state from 'Added' to 'Unchanged'.
dbug: 6/8/2025 11:38:06.237 CoreEventId.StateChanged[10807] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The 'User' entity with key '{Id: 2f55f886-5463-41a5-d273-08dda667ca06}' tracked by 'BookAddressContext' changed state from 'Modified' to 'Unchanged'.
dbug: 6/8/2025 11:38:06.238 CoreEventId.SaveChangesCompleted[10005] (Microsoft.EntityFrameworkCore.Update) 
      SaveChanges completed for 'BookAddressContext' with 4 entities written to the database.
dbug: 6/8/2025 11:38:06.265 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'BookAddressContext' disposed.
dbug: 6/8/2025 11:38:06.271 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:06.277 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (1ms).
dbug: 6/8/2025 11:38:23.758 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.16 initialized 'BookAddressContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.15' with options: SensitiveDataLoggingEnabled 
dbug: 6/8/2025 11:38:23.761 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 6/8/2025 11:38:23.764 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (3ms).
dbug: 6/8/2025 11:38:23.764 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:23.765 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:23.765 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:38:23.766 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:38:23.766 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (0ms).
dbug: 6/8/2025 11:38:23.767 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__normalizedEmail_0='STRING@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
info: 6/8/2025 11:38:23.774 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (2ms) [Parameters=[@__normalizedEmail_0='STRING@GMAIL.COM' (Size = 256)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(2) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[NormalizedEmail] = @__normalizedEmail_0
dbug: 6/8/2025 11:38:23.777 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'User' entity with key '{Id: 2f55f886-5463-41a5-d273-08dda667ca06}'.
dbug: 6/8/2025 11:38:23.781 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:23.781 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 6ms reading results.
dbug: 6/8/2025 11:38:23.782 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:23.782 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:38:23.880 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<IdentityUserClaim<Guid>>()
          .Where(uc => uc.UserId.Equals(__user_Id_0))
          .Select(c => c.ToClaim())'
dbug: 6/8/2025 11:38:23.907 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => new SingleQueryingEnumerable<Claim>(
          (RelationalQueryContext)queryContext, 
          RelationalCommandCache.QueryExpression(
              Client Projections:
                  0 -> Dictionary<IProperty, int> { [Property: IdentityUserClaim<Guid>.Id (int) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: IdentityUserClaim<Guid>.ClaimType (string), 1], [Property: IdentityUserClaim<Guid>.ClaimValue (string), 2], [Property: IdentityUserClaim<Guid>.UserId (Guid) Required FK Index, 3] }
              SELECT a.Id, a.ClaimType, a.ClaimValue, a.UserId
              FROM AspNetUserClaims AS a
              WHERE a.UserId == @__user_Id_0), 
          null, 
          Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, Claim>, 
          BookAddess.DAL.Context.BookAddressContext, 
          False, 
          False, 
          True
      )'
dbug: 6/8/2025 11:38:23.909 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:23.910 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:23.913 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:38:23.914 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (1ms).
dbug: 6/8/2025 11:38:23.915 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (1ms).
dbug: 6/8/2025 11:38:23.915 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__user_Id_0='2f55f886-5463-41a5-d273-08dda667ca06'], CommandType='Text', CommandTimeout='30']
      SELECT [a].[Id], [a].[ClaimType], [a].[ClaimValue], [a].[UserId]
      FROM [AspNetUserClaims] AS [a]
      WHERE [a].[UserId] = @__user_Id_0
info: 6/8/2025 11:38:23.924 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (3ms) [Parameters=[@__user_Id_0='2f55f886-5463-41a5-d273-08dda667ca06'], CommandType='Text', CommandTimeout='30']
      SELECT [a].[Id], [a].[ClaimType], [a].[ClaimValue], [a].[UserId]
      FROM [AspNetUserClaims] AS [a]
      WHERE [a].[UserId] = @__user_Id_0
dbug: 6/8/2025 11:38:23.926 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: 4}'.
dbug: 6/8/2025 11:38:23.929 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: 5}'.
dbug: 6/8/2025 11:38:23.931 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'IdentityUserClaim' entity with key '{Id: 6}'.
dbug: 6/8/2025 11:38:23.932 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:23.932 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 7ms reading results.
dbug: 6/8/2025 11:38:23.933 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:23.933 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (0ms).
dbug: 6/8/2025 11:38:23.960 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'BookAddressContext' disposed.
dbug: 6/8/2025 11:38:23.962 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:38:23.963 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (0ms).
warn: 6/8/2025 11:40:20.672 CoreEventId.SensitiveDataLoggingEnabledWarning[10400] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Sensitive data logging is enabled. Log entries and exception messages may include sensitive application data; this mode should only be enabled during development.
dbug: 6/8/2025 11:40:21.103 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.16 initialized 'BookAddressContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.15' with options: SensitiveDataLoggingEnabled 
dbug: 6/8/2025 11:40:21.538 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<User>()
          .FirstOrDefault(e => object.Equals(
              objA: EF.Property<object>(e, "Id"), 
              objB: __get_Item_0))'
dbug: 6/8/2025 11:40:22.059 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleOrDefaultAsync<User>(
          asyncEnumerable: new SingleQueryingEnumerable<User>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> Dictionary<IProperty, int> { [Property: User.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: User.AccessFailedCount (int) Required, 1], [Property: User.ConcurrencyStamp (string) Concurrency, 2], [Property: User.Email (string) MaxLength(256), 3], [Property: User.EmailConfirmed (bool) Required, 4], [Property: User.LockoutEnabled (bool) Required, 5], [Property: User.LockoutEnd (DateTimeOffset?), 6], [Property: User.NormalizedEmail (string) Index MaxLength(256), 7], [Property: User.NormalizedUserName (string) Index MaxLength(256), 8], [Property: User.PasswordHash (string), 9], [Property: User.PhoneNumber (string), 10], [Property: User.PhoneNumberConfirmed (bool) Required, 11], [Property: User.SecurityStamp (string), 12], [Property: User.TwoFactorEnabled (bool) Required, 13], [Property: User.UserName (string) MaxLength(256), 14] }
                  SELECT TOP(1) a.Id, a.AccessFailedCount, a.ConcurrencyStamp, a.Email, a.EmailConfirmed, a.LockoutEnabled, a.LockoutEnd, a.NormalizedEmail, a.NormalizedUserName, a.PasswordHash, a.PhoneNumber, a.PhoneNumberConfirmed, a.SecurityStamp, a.TwoFactorEnabled, a.UserName
                  FROM AspNetUsers AS a
                  WHERE a.Id == @__get_Item_0), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, User>, 
              BookAddess.DAL.Context.BookAddressContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 6/8/2025 11:40:22.111 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 6/8/2025 11:40:22.181 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (64ms).
dbug: 6/8/2025 11:40:22.188 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:40:22.654 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:40:22.659 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 6/8/2025 11:40:22.671 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (10ms).
dbug: 6/8/2025 11:40:22.685 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (26ms).
dbug: 6/8/2025 11:40:22.693 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__get_Item_0='2f55f886-5463-41a5-d273-08dda667ca06' (Nullable = true)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(1) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[Id] = @__get_Item_0
info: 6/8/2025 11:40:22.903 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (192ms) [Parameters=[@__get_Item_0='2f55f886-5463-41a5-d273-08dda667ca06' (Nullable = true)], CommandType='Text', CommandTimeout='30']
      SELECT TOP(1) [a].[Id], [a].[AccessFailedCount], [a].[ConcurrencyStamp], [a].[Email], [a].[EmailConfirmed], [a].[LockoutEnabled], [a].[LockoutEnd], [a].[NormalizedEmail], [a].[NormalizedUserName], [a].[PasswordHash], [a].[PhoneNumber], [a].[PhoneNumberConfirmed], [a].[SecurityStamp], [a].[TwoFactorEnabled], [a].[UserName]
      FROM [AspNetUsers] AS [a]
      WHERE [a].[Id] = @__get_Item_0
dbug: 6/8/2025 11:40:23.003 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'BookAddressContext' started tracking 'User' entity with key '{Id: 2f55f886-5463-41a5-d273-08dda667ca06}'.
dbug: 6/8/2025 11:40:23.066 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:40:23.075 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'BookAddresDb' on server '.' is being disposed after spending 165ms reading results.
dbug: 6/8/2025 11:40:23.083 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:40:23.093 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'BookAddresDb' on server '.' (10ms).
dbug: 6/8/2025 11:40:33.175 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'BookAddressContext' disposed.
dbug: 6/8/2025 11:40:33.222 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'BookAddresDb' on server '.'.
dbug: 6/8/2025 11:40:33.276 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (52ms).