
-- Orchestration -- Automatically Running entire Flo.
-- When Fiels Lands it run auto.

-- M1:- Use SP
    -- For each Entity we make SP 
    -- 1.(Copy CSV) tO Stage
    -- 2. CLean and MERGE
    -- 3. Consumption MERGE.

-- Parent SP will call these Individual SP AND Parent SP is Invoked using TASK (Schedule)


-- M2:- 
-- 1. SP1 will Run all COPY CSVs
-- 2. SP2 will Run all Clean and MERGE(From Stage)
-- 3. SP3 will Run all  MERGE(From Clean)
-- All of 3 SPs will be RUN sequentially7 usinG Parent SP
-- Parent SP is Invoked usinG TASK


-- M3: Using DAG via Task Tree
   --  Where each Task is Stream Aware so it will only TRigger if there is Data in Stream Obj


-- M4: DAG using Dynamic Tables
        -- 
