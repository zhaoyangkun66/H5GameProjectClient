.class public L㚬/உ/ḓ/உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/உ/ḓ/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "L\u36ac/\u0b89/\u1e13/\u0b89;",
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

    invoke-virtual {p0, p1}, L㚬/உ/ḓ/உ$உ;->உ(Landroid/os/Parcel;)L㚬/உ/ḓ/உ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/உ/ḓ/உ$உ;->䂻(I)[L㚬/உ/ḓ/உ;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/os/Parcel;)L㚬/உ/ḓ/உ;
    .locals 1

    new-instance v0, L㚬/உ/ḓ/உ;

    invoke-direct {v0, p1}, L㚬/உ/ḓ/உ;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public 䂻(I)[L㚬/உ/ḓ/உ;
    .locals 0

    new-array p1, p1, [L㚬/உ/ḓ/உ;

    return-object p1
.end method
