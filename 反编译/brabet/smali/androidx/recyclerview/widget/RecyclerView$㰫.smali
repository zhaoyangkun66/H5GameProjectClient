.class public abstract Landroidx/recyclerview/widget/RecyclerView$㰫;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u3c2b"
.end annotation


# static fields
.field public static final 㭲:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final உ:Landroid/view/View;

.field public ಫ:I

.field public ཇ:Landroidx/recyclerview/widget/RecyclerView$㢏;

.field public ბ:I

.field public ᆻ:I

.field public ᓭ:Z

.field public ḓ:J

.field public ἥ:I

.field public ℓ:Landroidx/recyclerview/widget/RecyclerView$㰫;

.field public ㄏ:Landroidx/recyclerview/widget/RecyclerView$㰫;

.field public 㚬:I

.field public 㞘:Landroidx/recyclerview/widget/RecyclerView;

.field public 㧦:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public 㲝:I

.field public 㹖:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public 㺴:I

.field public 䂻:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field public 䆀:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭲:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḓ:J

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->䆀:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ℓ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ㄏ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㧦:Ljava/util/List;

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㹖:Ljava/util/List;

    const/4 v2, 0x0

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ:I

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ཇ:Landroidx/recyclerview/widget/RecyclerView$㢏;

    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᓭ:Z

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ბ:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㲝:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " position="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḓ:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", oldPos="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pLpos:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ม()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᓭ:Z

    if-eqz v0, :cond_1

    const-string v0, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v0, "[attachedScrap]"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭲()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㫏()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㢏()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ർ()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㲧()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㖪()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㲝()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ש()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴:I

    :cond_0
    return-void
.end method

.method public ڈ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ბ:I

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$㰫;I)Z

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ბ:I

    return-void
.end method

.method public உ(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ()V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㧦:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public ಋ(IZ)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴:I

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    :cond_2
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ბ;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView$ბ;->㚬:Z

    :cond_3
    return-void
.end method

.method public final ಫ()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㞘:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionFor(Landroidx/recyclerview/widget/RecyclerView$㰫;)I

    move-result v0

    return v0
.end method

.method public ർ()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ม()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ཇ:Landroidx/recyclerview/widget/RecyclerView$㢏;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ཇ()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴:I

    return v0
.end method

.method public ბ(I)Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final ᆻ()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㧦:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㧦:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㹖:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public ᓭ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㧦:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㹖:Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭲:Ljava/util/List;

    return-object v0

    :cond_2
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㭲:Ljava/util/List;

    return-object v0
.end method

.method public final ᰘ(Z)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    or-int/lit8 p1, p1, 0x10

    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 p1, p1, -0x11

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public ᱹ(Landroidx/recyclerview/widget/RecyclerView$㢏;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ཇ:Landroidx/recyclerview/widget/RecyclerView$㢏;

    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᓭ:Z

    return-void
.end method

.method public ḓ()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    return-void
.end method

.method public ḙ()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final ἥ()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    :cond_0
    return v0
.end method

.method public ᾦ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㲝:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->㖪(Landroid/view/View;)I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ბ:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$㰫;I)Z

    return-void
.end method

.method public ℓ()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->ᱹ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ㄏ(IIZ)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->䂻(I)V

    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಋ(IZ)V

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    return-void
.end method

.method public ㄬ()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㖆()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ཇ:Landroidx/recyclerview/widget/RecyclerView$㢏;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$㢏;->ർ(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    return-void
.end method

.method public final 㖪()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-static {v0}, L㚬/ℓ/ἥ/㭲;->ᱹ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㚬()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    return-void
.end method

.method public 㞘()Z
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->உ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㞘:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㢏()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㥁()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final 㧦()J
    .locals 2

    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḓ:J

    return-wide v0
.end method

.method public 㨃(II)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    return-void
.end method

.method public 㫏()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㭢()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 㭲()Z
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public 㰫()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㚬:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḓ:J

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ᆻ:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ἥ:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ℓ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ㄏ:Landroidx/recyclerview/widget/RecyclerView$㰫;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->㺴()V

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ბ:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㲝:I

    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$㰫;)V

    return-void
.end method

.method public 㲝()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$㰫;->ḙ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public 㲧()Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final 㹖()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->䆀:I

    return v0
.end method

.method public 㺴()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->㧦:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    return-void
.end method

.method public 䂻(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    return-void
.end method

.method public 䆀()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$㰫;->ಫ:I

    return-void
.end method
