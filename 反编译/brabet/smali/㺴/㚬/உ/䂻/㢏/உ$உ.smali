.class public final L㺴/㚬/உ/䂻/㢏/உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㢏/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "L\u3eb4/\u36ac/\u0b89/\u40bb/\u388f/\u0b89;",
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

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/உ$உ;->உ(Landroid/os/Parcel;)L㺴/㚬/உ/䂻/㢏/உ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㺴/㚬/உ/䂻/㢏/உ$உ;->䂻(I)[L㺴/㚬/உ/䂻/㢏/உ;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/os/Parcel;)L㺴/㚬/உ/䂻/㢏/உ;
    .locals 7

    const-class v0, L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, L㺴/㚬/உ/䂻/㢏/㹖;

    const-class v0, L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, L㺴/㚬/உ/䂻/㢏/㹖;

    const-class v0, L㺴/㚬/உ/䂻/㢏/㹖;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, L㺴/㚬/உ/䂻/㢏/㹖;

    const-class v0, L㺴/㚬/உ/䂻/㢏/உ$㚬;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, L㺴/㚬/உ/䂻/㢏/உ$㚬;

    new-instance p1, L㺴/㚬/உ/䂻/㢏/உ;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, L㺴/㚬/உ/䂻/㢏/உ;-><init>(L㺴/㚬/உ/䂻/㢏/㹖;L㺴/㚬/உ/䂻/㢏/㹖;L㺴/㚬/உ/䂻/㢏/㹖;L㺴/㚬/உ/䂻/㢏/உ$㚬;L㺴/㚬/உ/䂻/㢏/உ$உ;)V

    return-object p1
.end method

.method public 䂻(I)[L㺴/㚬/உ/䂻/㢏/உ;
    .locals 0

    new-array p1, p1, [L㺴/㚬/உ/䂻/㢏/உ;

    return-object p1
.end method
