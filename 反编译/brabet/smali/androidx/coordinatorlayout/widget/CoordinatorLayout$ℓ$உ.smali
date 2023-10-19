.class public final Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$\u2113;",
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

    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ$உ;->உ(Landroid/os/Parcel;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ$உ;->䂻(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ$உ;->㚬(I)[Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;

    move-result-object p1

    return-object p1
.end method

.method public உ(Landroid/os/Parcel;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;
    .locals 2

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public 㚬(I)[Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;
    .locals 0

    new-array p1, p1, [Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;

    return-object p1
.end method

.method public 䂻(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;
    .locals 1

    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;

    invoke-direct {v0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$ℓ;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method
