.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;
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

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u1e13"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$\u1e13;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ಫ:Z

.field public ᆻ:[I

.field public ḓ:[I

.field public ℓ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$\u3eb4$\u0b89;",
            ">;"
        }
    .end annotation
.end field

.field public ㄏ:Z

.field public 㚬:I

.field public 㧦:Z

.field public 㺴:I

.field public 䂻:I

.field public 䆀:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ$உ;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ$உ;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㚬:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    if-lez v0, :cond_0

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ḓ:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䆀:I

    if-lez v0, :cond_1

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ᆻ:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ㄏ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ಫ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㧦:Z

    const-class v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$㺴$உ;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ℓ:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㚬:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㚬:I

    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ḓ:[I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ḓ:[I

    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䆀:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䆀:I

    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ᆻ:[I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ᆻ:[I

    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ㄏ:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ㄏ:Z

    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ಫ:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ಫ:Z

    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㧦:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㧦:Z

    iget-object p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ℓ:Ljava/util/List;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ℓ:Ljava/util/List;

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

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㚬:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    if-lez p2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ḓ:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_0
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䆀:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䆀:I

    if-lez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ᆻ:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_1
    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ㄏ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ಫ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㧦:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ℓ:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method

.method public ಫ()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ḓ:[I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䂻:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㚬:I

    return-void
.end method

.method public 㧦()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ḓ:[I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->㺴:I

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->䆀:I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ᆻ:[I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$ḓ;->ℓ:Ljava/util/List;

    return-void
.end method
