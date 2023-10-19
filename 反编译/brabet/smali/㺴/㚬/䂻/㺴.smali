.class public final L㺴/㚬/䂻/㺴;
.super L㺴/㚬/䂻/䆀;
.source ""


# static fields
.field public static final 㺴:L㺴/㚬/䂻/㺴;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, L㺴/㚬/䂻/㺴;

    invoke-direct {v0}, L㺴/㚬/䂻/㺴;-><init>()V

    sput-object v0, L㺴/㚬/䂻/㺴;->㺴:L㺴/㚬/䂻/㺴;

    sget-object v1, L㺴/㚬/䂻/䆀;->㚬:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㺴/㚬/䂻/䆀;-><init>()V

    return-void
.end method

.method public static உ()L㺴/㚬/䂻/㺴;
    .locals 1

    sget-boolean v0, L㺴/㚬/䂻/䆀;->䂻:Z

    if-eqz v0, :cond_0

    new-instance v0, L㺴/㚬/䂻/㺴;

    invoke-direct {v0}, L㺴/㚬/䂻/㺴;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, L㺴/㚬/䂻/㺴;->㺴:L㺴/㚬/䂻/㺴;

    return-object v0
.end method
