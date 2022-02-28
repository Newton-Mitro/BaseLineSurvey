CREATE VIEW dbo.View_Users
AS
SELECT Users.UserId
    , Users.FullName
    , Users.Email
    , Users.RoleId
    , Users.IsActive
    , Users.CreatedAt
    , Users.CreatedBy
    , Users.UpdatedAt
    , Users.UpdatedBy
    , UsersSupervisors.UserId AS SupervisorId
    , Supervisors.FullName AS SupervisorName
    , Roles.RoleName
FROM dbo.Users
LEFT JOIN dbo.Roles
    ON Users.RoleId = Roles.RoleId
LEFT JOIN dbo.UsersSupervisors
    ON Users.UserId = UsersSupervisors.UserId
LEFT JOIN dbo.Users AS Supervisors
    ON UsersSupervisors.SupervisorId = Supervisors.UserId;
