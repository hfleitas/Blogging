CREATE TABLE [dbo].[Post] (
    [PostId]  INT            IDENTITY (1, 1) NOT NULL,
    [BlogId]  INT            NOT NULL,
    [Content] NVARCHAR (MAX) NULL,
    [Title]   NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED ([PostId] ASC),
    CONSTRAINT [FK_Post_Blog_BlogId] FOREIGN KEY ([BlogId]) REFERENCES [dbo].[Blog] ([BlogId]) ON DELETE CASCADE
);

