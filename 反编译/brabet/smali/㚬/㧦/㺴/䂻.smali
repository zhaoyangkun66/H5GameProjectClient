.class public final L㚬/㧦/㺴/䂻;
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u36ac/\u39e6/\u3eb4/\u40bb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ಫ:Ljava/lang/CharSequence;

.field public final ཇ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ᆻ:Ljava/lang/String;

.field public final ᓭ:Z

.field public final ḓ:[I

.field public final ἥ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ℓ:I

.field public final ㄏ:I

.field public final 㚬:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final 㧦:I

.field public final 㹖:Ljava/lang/CharSequence;

.field public final 㺴:[I

.field public final 䂻:[I

.field public final 䆀:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L㚬/㧦/㺴/䂻$உ;

    invoke-direct {v0}, L㚬/㧦/㺴/䂻$உ;-><init>()V

    sput-object v0, L㚬/㧦/㺴/䂻;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->䂻:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->㚬:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->㺴:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->ḓ:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, L㚬/㧦/㺴/䂻;->䆀:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->ᆻ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, L㚬/㧦/㺴/䂻;->ℓ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, L㚬/㧦/㺴/䂻;->ㄏ:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->ಫ:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, L㚬/㧦/㺴/䂻;->㧦:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->㹖:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->ἥ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->ཇ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, L㚬/㧦/㺴/䂻;->ᓭ:Z

    return-void
.end method

.method public constructor <init>(L㚬/㧦/㺴/உ;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, L㚬/㧦/㺴/㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, L㚬/㧦/㺴/䂻;->䂻:[I

    iget-boolean v1, p1, L㚬/㧦/㺴/㢏;->ᆻ:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, L㚬/㧦/㺴/䂻;->㚬:Ljava/util/ArrayList;

    new-array v1, v0, [I

    iput-object v1, p0, L㚬/㧦/㺴/䂻;->㺴:[I

    new-array v1, v0, [I

    iput-object v1, p0, L㚬/㧦/㺴/䂻;->ḓ:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p1, L㚬/㧦/㺴/㢏;->உ:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/㧦/㺴/㢏$உ;

    iget-object v4, p0, L㚬/㧦/㺴/䂻;->䂻:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, L㚬/㧦/㺴/㢏$உ;->உ:I

    aput v6, v4, v2

    iget-object v2, p0, L㚬/㧦/㺴/䂻;->㚬:Ljava/util/ArrayList;

    iget-object v4, v3, L㚬/㧦/㺴/㢏$உ;->䂻:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, L㚬/㧦/㺴/䂻;->䂻:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, L㚬/㧦/㺴/㢏$உ;->㚬:I

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, L㚬/㧦/㺴/㢏$உ;->㺴:I

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, L㚬/㧦/㺴/㢏$உ;->ḓ:I

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, L㚬/㧦/㺴/㢏$உ;->䆀:I

    aput v6, v2, v4

    iget-object v2, p0, L㚬/㧦/㺴/䂻;->㺴:[I

    iget-object v4, v3, L㚬/㧦/㺴/㢏$உ;->ᆻ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v4, v2, v1

    iget-object v2, p0, L㚬/㧦/㺴/䂻;->ḓ:[I

    iget-object v3, v3, L㚬/㧦/㺴/㢏$உ;->ℓ:L㚬/ἥ/ḓ$㚬;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    :cond_1
    iget v0, p1, L㚬/㧦/㺴/㢏;->䆀:I

    iput v0, p0, L㚬/㧦/㺴/䂻;->䆀:I

    iget-object v0, p1, L㚬/㧦/㺴/㢏;->ℓ:Ljava/lang/String;

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->ᆻ:Ljava/lang/String;

    iget v0, p1, L㚬/㧦/㺴/உ;->㭲:I

    iput v0, p0, L㚬/㧦/㺴/䂻;->ℓ:I

    iget v0, p1, L㚬/㧦/㺴/㢏;->ㄏ:I

    iput v0, p0, L㚬/㧦/㺴/䂻;->ㄏ:I

    iget-object v0, p1, L㚬/㧦/㺴/㢏;->ಫ:Ljava/lang/CharSequence;

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->ಫ:Ljava/lang/CharSequence;

    iget v0, p1, L㚬/㧦/㺴/㢏;->㧦:I

    iput v0, p0, L㚬/㧦/㺴/䂻;->㧦:I

    iget-object v0, p1, L㚬/㧦/㺴/㢏;->㹖:Ljava/lang/CharSequence;

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->㹖:Ljava/lang/CharSequence;

    iget-object v0, p1, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->ἥ:Ljava/util/ArrayList;

    iget-object v0, p1, L㚬/㧦/㺴/㢏;->ཇ:Ljava/util/ArrayList;

    iput-object v0, p0, L㚬/㧦/㺴/䂻;->ཇ:Ljava/util/ArrayList;

    iget-boolean p1, p1, L㚬/㧦/㺴/㢏;->ᓭ:Z

    iput-boolean p1, p0, L㚬/㧦/㺴/䂻;->ᓭ:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, L㚬/㧦/㺴/䂻;->䂻:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, L㚬/㧦/㺴/䂻;->㚬:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, L㚬/㧦/㺴/䂻;->㺴:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, L㚬/㧦/㺴/䂻;->ḓ:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, L㚬/㧦/㺴/䂻;->䆀:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, L㚬/㧦/㺴/䂻;->ᆻ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, L㚬/㧦/㺴/䂻;->ℓ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, L㚬/㧦/㺴/䂻;->ㄏ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, L㚬/㧦/㺴/䂻;->ಫ:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, L㚬/㧦/㺴/䂻;->㧦:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, L㚬/㧦/㺴/䂻;->㹖:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, L㚬/㧦/㺴/䂻;->ἥ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, L㚬/㧦/㺴/䂻;->ཇ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, L㚬/㧦/㺴/䂻;->ᓭ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public ಫ(L㚬/㧦/㺴/ἥ;)L㚬/㧦/㺴/உ;
    .locals 9

    new-instance v0, L㚬/㧦/㺴/உ;

    invoke-direct {v0, p1}, L㚬/㧦/㺴/உ;-><init>(L㚬/㧦/㺴/ἥ;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, L㚬/㧦/㺴/䂻;->䂻:[I

    array-length v4, v3

    if-ge v1, v4, :cond_2

    new-instance v4, L㚬/㧦/㺴/㢏$உ;

    invoke-direct {v4}, L㚬/㧦/㺴/㢏$உ;-><init>()V

    add-int/lit8 v5, v1, 0x1

    aget v1, v3, v1

    iput v1, v4, L㚬/㧦/㺴/㢏$உ;->உ:I

    const/4 v1, 0x2

    invoke-static {v1}, L㚬/㧦/㺴/ἥ;->ፖ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instantiate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " op #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " base fragment #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, L㚬/㧦/㺴/䂻;->䂻:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FragmentManager"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, L㚬/㧦/㺴/䂻;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, L㚬/㧦/㺴/ἥ;->㠭(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v4, L㚬/㧦/㺴/㢏$உ;->䂻:Landroidx/fragment/app/Fragment;

    invoke-static {}, L㚬/ἥ/ḓ$㚬;->values()[L㚬/ἥ/ḓ$㚬;

    move-result-object v1

    iget-object v3, p0, L㚬/㧦/㺴/䂻;->㺴:[I

    aget v3, v3, v2

    aget-object v1, v1, v3

    iput-object v1, v4, L㚬/㧦/㺴/㢏$உ;->ᆻ:L㚬/ἥ/ḓ$㚬;

    invoke-static {}, L㚬/ἥ/ḓ$㚬;->values()[L㚬/ἥ/ḓ$㚬;

    move-result-object v1

    iget-object v3, p0, L㚬/㧦/㺴/䂻;->ḓ:[I

    aget v3, v3, v2

    aget-object v1, v1, v3

    iput-object v1, v4, L㚬/㧦/㺴/㢏$உ;->ℓ:L㚬/ἥ/ḓ$㚬;

    iget-object v1, p0, L㚬/㧦/㺴/䂻;->䂻:[I

    add-int/lit8 v3, v5, 0x1

    aget v5, v1, v5

    iput v5, v4, L㚬/㧦/㺴/㢏$உ;->㚬:I

    add-int/lit8 v6, v3, 0x1

    aget v3, v1, v3

    iput v3, v4, L㚬/㧦/㺴/㢏$உ;->㺴:I

    add-int/lit8 v7, v6, 0x1

    aget v6, v1, v6

    iput v6, v4, L㚬/㧦/㺴/㢏$உ;->ḓ:I

    add-int/lit8 v8, v7, 0x1

    aget v1, v1, v7

    iput v1, v4, L㚬/㧦/㺴/㢏$உ;->䆀:I

    iput v5, v0, L㚬/㧦/㺴/㢏;->䂻:I

    iput v3, v0, L㚬/㧦/㺴/㢏;->㚬:I

    iput v6, v0, L㚬/㧦/㺴/㢏;->㺴:I

    iput v1, v0, L㚬/㧦/㺴/㢏;->ḓ:I

    invoke-virtual {v0, v4}, L㚬/㧦/㺴/㢏;->ḓ(L㚬/㧦/㺴/㢏$உ;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v8

    goto/16 :goto_0

    :cond_2
    iget p1, p0, L㚬/㧦/㺴/䂻;->䆀:I

    iput p1, v0, L㚬/㧦/㺴/㢏;->䆀:I

    iget-object p1, p0, L㚬/㧦/㺴/䂻;->ᆻ:Ljava/lang/String;

    iput-object p1, v0, L㚬/㧦/㺴/㢏;->ℓ:Ljava/lang/String;

    iget p1, p0, L㚬/㧦/㺴/䂻;->ℓ:I

    iput p1, v0, L㚬/㧦/㺴/உ;->㭲:I

    const/4 p1, 0x1

    iput-boolean p1, v0, L㚬/㧦/㺴/㢏;->ᆻ:Z

    iget v1, p0, L㚬/㧦/㺴/䂻;->ㄏ:I

    iput v1, v0, L㚬/㧦/㺴/㢏;->ㄏ:I

    iget-object v1, p0, L㚬/㧦/㺴/䂻;->ಫ:Ljava/lang/CharSequence;

    iput-object v1, v0, L㚬/㧦/㺴/㢏;->ಫ:Ljava/lang/CharSequence;

    iget v1, p0, L㚬/㧦/㺴/䂻;->㧦:I

    iput v1, v0, L㚬/㧦/㺴/㢏;->㧦:I

    iget-object v1, p0, L㚬/㧦/㺴/䂻;->㹖:Ljava/lang/CharSequence;

    iput-object v1, v0, L㚬/㧦/㺴/㢏;->㹖:Ljava/lang/CharSequence;

    iget-object v1, p0, L㚬/㧦/㺴/䂻;->ἥ:Ljava/util/ArrayList;

    iput-object v1, v0, L㚬/㧦/㺴/㢏;->ἥ:Ljava/util/ArrayList;

    iget-object v1, p0, L㚬/㧦/㺴/䂻;->ཇ:Ljava/util/ArrayList;

    iput-object v1, v0, L㚬/㧦/㺴/㢏;->ཇ:Ljava/util/ArrayList;

    iget-boolean v1, p0, L㚬/㧦/㺴/䂻;->ᓭ:Z

    iput-boolean v1, v0, L㚬/㧦/㺴/㢏;->ᓭ:Z

    invoke-virtual {v0, p1}, L㚬/㧦/㺴/உ;->ბ(I)V

    return-object v0
.end method
