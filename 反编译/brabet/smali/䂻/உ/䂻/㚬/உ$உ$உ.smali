.class public L䂻/உ/䂻/㚬/உ$உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L䂻/உ/䂻/㚬/உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䂻/உ/䂻/㚬/உ$உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# static fields
.field public static 䂻:L䂻/உ/䂻/㚬/உ;


# instance fields
.field public உ:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L䂻/உ/䂻/㚬/உ$உ$உ;->உ:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, L䂻/உ/䂻/㚬/உ$உ$உ;->உ:Landroid/os/IBinder;

    return-object v0
.end method

.method public ᰘ(ILandroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.support.v4.os.IResultReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v1, p0, L䂻/உ/䂻/㚬/உ$உ$உ;->உ:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, L䂻/உ/䂻/㚬/உ$உ;->㖆()L䂻/உ/䂻/㚬/உ;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, L䂻/உ/䂻/㚬/உ$உ;->㖆()L䂻/உ/䂻/㚬/உ;

    move-result-object v1

    invoke-interface {v1, p1, p2}, L䂻/உ/䂻/㚬/உ;->ᰘ(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
