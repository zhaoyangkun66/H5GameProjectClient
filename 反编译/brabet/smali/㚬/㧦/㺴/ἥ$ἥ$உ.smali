.class public L㚬/㧦/㺴/ἥ$ἥ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/ἥ$ἥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "L\u36ac/\u39e6/\u3eb4/\u1f25$\u1f25;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/㧦/㺴/ἥ$ἥ$உ;->உ(Landroid/os/Parcel;)L㚬/㧦/㺴/ἥ$ἥ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/㧦/㺴/ἥ$ἥ$உ;->䂻(I)[L㚬/㧦/㺴/ἥ$ἥ;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/os/Parcel;)L㚬/㧦/㺴/ἥ$ἥ;
    .locals 1

    new-instance v0, L㚬/㧦/㺴/ἥ$ἥ;

    invoke-direct {v0, p1}, L㚬/㧦/㺴/ἥ$ἥ;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public 䂻(I)[L㚬/㧦/㺴/ἥ$ἥ;
    .locals 0

    new-array p1, p1, [L㚬/㧦/㺴/ἥ$ἥ;

    return-object p1
.end method
