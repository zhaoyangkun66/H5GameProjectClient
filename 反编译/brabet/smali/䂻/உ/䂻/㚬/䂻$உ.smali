.class public L䂻/உ/䂻/㚬/䂻$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䂻/உ/䂻/㚬/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "L\u40bb/\u0b89/\u40bb/\u36ac/\u40bb;",
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

    invoke-virtual {p0, p1}, L䂻/உ/䂻/㚬/䂻$உ;->உ(Landroid/os/Parcel;)L䂻/உ/䂻/㚬/䂻;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L䂻/உ/䂻/㚬/䂻$உ;->䂻(I)[L䂻/உ/䂻/㚬/䂻;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/os/Parcel;)L䂻/உ/䂻/㚬/䂻;
    .locals 1

    new-instance v0, L䂻/உ/䂻/㚬/䂻;

    invoke-direct {v0, p1}, L䂻/உ/䂻/㚬/䂻;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public 䂻(I)[L䂻/உ/䂻/㚬/䂻;
    .locals 0

    new-array p1, p1, [L䂻/உ/䂻/㚬/䂻;

    return-object p1
.end method
