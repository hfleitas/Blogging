CREATE TABLE [dbo].[ResponseTimes] (
    [ResponseTimesId] INT           IDENTITY (1, 1) NOT NULL,
    [RequestId]       INT           NOT NULL,
    [Iteration]       INT           NOT NULL,
    [Url]             NVARCHAR (50) NOT NULL,
    [ResponseTime]    INT           NOT NULL,
    [EncTurnedOn]     BIT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_ResponseTimes] PRIMARY KEY CLUSTERED ([ResponseTimesId] ASC)
);


GO
CREATE COLUMNSTORE INDEX [ccl_ResponseTimes]
    ON [dbo].[ResponseTimes]([ResponseTimesId]);

