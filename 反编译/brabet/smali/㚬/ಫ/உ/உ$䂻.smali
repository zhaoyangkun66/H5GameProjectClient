.class public final L㚬/ಫ/உ/உ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ಫ/உ/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "L\u36ac/\u0cab/\u0b89/\u0b89;",
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

    invoke-virtual {p0, p1}, L㚬/ಫ/உ/உ$䂻;->உ(Landroid/os/Parcel;)L㚬/ಫ/உ/உ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, L㚬/ಫ/உ/உ$䂻;->䂻(Landroid/os/Parcel;Ljava/lang/ClassLoader;)L㚬/ಫ/உ/உ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, L㚬/ಫ/உ/உ$䂻;->㚬(I)[L㚬/ಫ/உ/உ;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/os/Parcel;)L㚬/ಫ/உ/உ;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, L㚬/ಫ/உ/உ$䂻;->䂻(Landroid/os/Parcel;Ljava/lang/ClassLoader;)L㚬/ಫ/உ/உ;

    move-result-object p1

    return-object p1
.end method

.method public 㚬(I)[L㚬/ಫ/உ/உ;
    .locals 0

    new-array p1, p1, [L㚬/ಫ/உ/உ;

    return-object p1
.end method

.method public 䂻(Landroid/os/Parcel;Ljava/lang/ClassLoader;)L㚬/ಫ/உ/உ;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, L㚬/ಫ/உ/உ;->㚬:L㚬/ಫ/உ/உ;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "superState must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
