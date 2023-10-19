.class public L䂻/உ/䂻/㚬/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L䂻/உ/䂻/㚬/䂻$䂻;,
        L䂻/உ/䂻/㚬/䂻$㚬;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u40bb/\u0b89/\u40bb/\u36ac/\u40bb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final 㚬:Landroid/os/Handler;

.field public 㺴:L䂻/உ/䂻/㚬/உ;

.field public final 䂻:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L䂻/உ/䂻/㚬/䂻$உ;

    invoke-direct {v0}, L䂻/உ/䂻/㚬/䂻$உ;-><init>()V

    sput-object v0, L䂻/உ/䂻/㚬/䂻;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, L䂻/உ/䂻/㚬/䂻;->䂻:Z

    const/4 v0, 0x0

    iput-object v0, p0, L䂻/உ/䂻/㚬/䂻;->㚬:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, L䂻/உ/䂻/㚬/உ$உ;->ർ(Landroid/os/IBinder;)L䂻/உ/䂻/㚬/உ;

    move-result-object p1

    iput-object p1, p0, L䂻/உ/䂻/㚬/䂻;->㺴:L䂻/உ/䂻/㚬/உ;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, L䂻/உ/䂻/㚬/䂻;->㺴:L䂻/உ/䂻/㚬/உ;

    if-nez p2, :cond_0

    new-instance p2, L䂻/உ/䂻/㚬/䂻$䂻;

    invoke-direct {p2, p0}, L䂻/உ/䂻/㚬/䂻$䂻;-><init>(L䂻/உ/䂻/㚬/䂻;)V

    iput-object p2, p0, L䂻/உ/䂻/㚬/䂻;->㺴:L䂻/உ/䂻/㚬/உ;

    :cond_0
    iget-object p2, p0, L䂻/உ/䂻/㚬/䂻;->㺴:L䂻/உ/䂻/㚬/உ;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ಫ(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public 㧦(ILandroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, L䂻/உ/䂻/㚬/䂻;->䂻:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, L䂻/உ/䂻/㚬/䂻;->㚬:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, L䂻/உ/䂻/㚬/䂻$㚬;

    invoke-direct {v1, p0, p1, p2}, L䂻/உ/䂻/㚬/䂻$㚬;-><init>(L䂻/உ/䂻/㚬/䂻;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, L䂻/உ/䂻/㚬/䂻;->ಫ(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, L䂻/உ/䂻/㚬/䂻;->㺴:L䂻/உ/䂻/㚬/உ;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, p1, p2}, L䂻/உ/䂻/㚬/உ;->ᰘ(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
