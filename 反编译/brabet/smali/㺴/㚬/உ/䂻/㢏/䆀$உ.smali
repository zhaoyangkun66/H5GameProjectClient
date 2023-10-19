.class public final L㺴/㚬/உ/䂻/㢏/䆀$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㢏/䆀;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u4180;",
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

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/䆀$உ;->உ(Landroid/os/Parcel;)L㺴/㚬/உ/䂻/㢏/䆀;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/䆀$உ;->䂻(I)[L㺴/㚬/உ/䂻/㢏/䆀;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/os/Parcel;)L㺴/㚬/உ/䂻/㢏/䆀;
    .locals 3

    new-instance v0, L㺴/㚬/உ/䂻/㢏/䆀;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, L㺴/㚬/உ/䂻/㢏/䆀;-><init>(JL㺴/㚬/உ/䂻/㢏/䆀$உ;)V

    return-object v0
.end method

.method public 䂻(I)[L㺴/㚬/உ/䂻/㢏/䆀;
    .locals 0

    new-array p1, p1, [L㺴/㚬/உ/䂻/㢏/䆀;

    return-object p1
.end method
