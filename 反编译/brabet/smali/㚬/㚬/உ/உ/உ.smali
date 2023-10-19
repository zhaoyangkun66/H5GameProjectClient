.class public L㚬/㚬/உ/உ/உ;
.super L㚬/㚬/உ/உ/㚬;
.source ""


# static fields
.field public static volatile 㚬:L㚬/㚬/உ/உ/உ;


# instance fields
.field public உ:L㚬/㚬/உ/உ/㚬;

.field public 䂻:L㚬/㚬/உ/உ/㚬;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, L㚬/㚬/உ/உ/㚬;-><init>()V

    new-instance v0, L㚬/㚬/உ/உ/䂻;

    invoke-direct {v0}, L㚬/㚬/உ/உ/䂻;-><init>()V

    iput-object v0, p0, L㚬/㚬/உ/உ/உ;->䂻:L㚬/㚬/உ/உ/㚬;

    iput-object v0, p0, L㚬/㚬/உ/உ/உ;->உ:L㚬/㚬/உ/உ/㚬;

    return-void
.end method

.method public static 䂻()L㚬/㚬/உ/உ/உ;
    .locals 2

    sget-object v0, L㚬/㚬/உ/உ/உ;->㚬:L㚬/㚬/உ/உ/உ;

    if-eqz v0, :cond_0

    sget-object v0, L㚬/㚬/உ/உ/உ;->㚬:L㚬/㚬/உ/உ/உ;

    return-object v0

    :cond_0
    const-class v0, L㚬/㚬/உ/உ/உ;

    monitor-enter v0

    :try_start_0
    sget-object v1, L㚬/㚬/உ/உ/உ;->㚬:L㚬/㚬/உ/உ/உ;

    if-nez v1, :cond_1

    new-instance v1, L㚬/㚬/உ/உ/உ;

    invoke-direct {v1}, L㚬/㚬/உ/உ/உ;-><init>()V

    sput-object v1, L㚬/㚬/உ/உ/உ;->㚬:L㚬/㚬/உ/உ/உ;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, L㚬/㚬/உ/உ/உ;->㚬:L㚬/㚬/உ/உ/உ;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public உ()Z
    .locals 1

    iget-object v0, p0, L㚬/㚬/உ/உ/உ;->உ:L㚬/㚬/உ/உ/㚬;

    invoke-virtual {v0}, L㚬/㚬/உ/உ/㚬;->உ()Z

    move-result v0

    return v0
.end method
