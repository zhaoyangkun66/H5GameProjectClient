.class public final Landroidx/appcompat/widget/SearchView$ᓭ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView$ᓭ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/appcompat/widget/SearchView$\u14ed;",
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

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$ᓭ$உ;->உ(Landroid/os/Parcel;)Landroidx/appcompat/widget/SearchView$ᓭ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$ᓭ$உ;->䂻(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/appcompat/widget/SearchView$ᓭ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$ᓭ$உ;->㚬(I)[Landroidx/appcompat/widget/SearchView$ᓭ;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/os/Parcel;)Landroidx/appcompat/widget/SearchView$ᓭ;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/SearchView$ᓭ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/SearchView$ᓭ;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public 㚬(I)[Landroidx/appcompat/widget/SearchView$ᓭ;
    .locals 0

    new-array p1, p1, [Landroidx/appcompat/widget/SearchView$ᓭ;

    return-object p1
.end method

.method public 䂻(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/appcompat/widget/SearchView$ᓭ;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/SearchView$ᓭ;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/SearchView$ᓭ;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method
