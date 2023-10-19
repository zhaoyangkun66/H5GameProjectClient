.class public final L㺴/㚬/உ/䂻/㢏/㹖$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㢏/㹖;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u3e56;",
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

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/㹖$உ;->உ(Landroid/os/Parcel;)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/㹖$உ;->䂻(I)[L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/os/Parcel;)L㺴/㚬/உ/䂻/㢏/㹖;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/㢏/㹖;->㧦(II)L㺴/㚬/உ/䂻/㢏/㹖;

    move-result-object p1

    return-object p1
.end method

.method public 䂻(I)[L㺴/㚬/உ/䂻/㢏/㹖;
    .locals 0

    new-array p1, p1, [L㺴/㚬/உ/䂻/㢏/㹖;

    return-object p1
.end method
