CREATE TABLE [dbo].[Blog] (
    [BlogId] INT            IDENTITY (1, 1) NOT NULL,
    [Url]    NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED ([BlogId] ASC)
);

