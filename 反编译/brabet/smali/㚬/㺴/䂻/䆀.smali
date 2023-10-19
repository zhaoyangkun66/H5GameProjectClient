.class public L㚬/㺴/䂻/䆀;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:L䂻/உ/உ/உ;


# direct methods
.method public constructor <init>(L䂻/உ/உ/உ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/㺴/䂻/䆀;->உ:L䂻/உ/உ/உ;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, L㚬/㺴/䂻/䆀;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, L㚬/㺴/䂻/䆀;

    invoke-virtual {p1}, L㚬/㺴/䂻/䆀;->உ()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, L㚬/㺴/䂻/䆀;->உ:L䂻/உ/உ/உ;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, L㚬/㺴/䂻/䆀;->உ()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public உ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, L㚬/㺴/䂻/䆀;->உ:L䂻/உ/உ/உ;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
