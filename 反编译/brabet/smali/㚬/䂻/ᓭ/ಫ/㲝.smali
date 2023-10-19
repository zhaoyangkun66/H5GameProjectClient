.class public final L㚬/䂻/ᓭ/ಫ/㲝;
.super L㚬/䂻/ᓭ/ಫ/㧦;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements L㚬/䂻/ᓭ/ಫ/ἥ;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final ม:I


# instance fields
.field public final ಫ:L㚬/䂻/ბ/㖆;

.field public ཇ:Landroid/view/View;

.field public ბ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

.field public final ᆻ:I

.field public ᓭ:Landroid/view/View;

.field public final ḓ:L㚬/䂻/ᓭ/ಫ/䆀;

.field public ḙ:I

.field public ἥ:Landroid/widget/PopupWindow$OnDismissListener;

.field public final ℓ:I

.field public final ㄏ:I

.field public 㖪:I

.field public final 㚬:Landroid/content/Context;

.field public 㞘:Z

.field public 㢏:Z

.field public final 㧦:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public 㭲:Z

.field public 㲝:Landroid/view/ViewTreeObserver;

.field public final 㹖:Landroid/view/View$OnAttachStateChangeListener;

.field public final 㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

.field public final 䆀:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, L㚬/䂻/ᆻ;->ἥ:I

    sput v0, L㚬/䂻/ᓭ/ಫ/㲝;->ม:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/View;IIZ)V
    .locals 3

    invoke-direct {p0}, L㚬/䂻/ᓭ/ಫ/㧦;-><init>()V

    new-instance v0, L㚬/䂻/ᓭ/ಫ/㲝$உ;

    invoke-direct {v0, p0}, L㚬/䂻/ᓭ/ಫ/㲝$உ;-><init>(L㚬/䂻/ᓭ/ಫ/㲝;)V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㧦:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, L㚬/䂻/ᓭ/ಫ/㲝$䂻;

    invoke-direct {v0, p0}, L㚬/䂻/ᓭ/ಫ/㲝$䂻;-><init>(L㚬/䂻/ᓭ/ಫ/㲝;)V

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㹖:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㖪:I

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㚬:Landroid/content/Context;

    iput-object p2, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    iput-boolean p6, p0, L㚬/䂻/ᓭ/ಫ/㲝;->䆀:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, L㚬/䂻/ᓭ/ಫ/䆀;

    sget v2, L㚬/䂻/ᓭ/ಫ/㲝;->ม:I

    invoke-direct {v1, p2, v0, p6, v2}, L㚬/䂻/ᓭ/ಫ/䆀;-><init>(L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ḓ:L㚬/䂻/ᓭ/ಫ/䆀;

    iput p4, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ℓ:I

    iput p5, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ㄏ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, L㚬/䂻/㺴;->㺴:I

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ᆻ:I

    iput-object p3, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ཇ:Landroid/view/View;

    new-instance p3, L㚬/䂻/ბ/㖆;

    const/4 p6, 0x0

    invoke-direct {p3, p1, p6, p4, p5}, L㚬/䂻/ბ/㖆;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {p2, p0, p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㚬(L㚬/䂻/ᓭ/ಫ/ἥ;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㲝;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㞘:Z

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v0}, L㚬/䂻/ᓭ/ಫ/ᆻ;->close()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㲝:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ᓭ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㲝:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㲝:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㧦:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㲝:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ᓭ:Landroid/view/View;

    iget-object v1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㹖:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ἥ:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㲝;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㲝;->dismiss()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ბ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, L㚬/䂻/ᓭ/ಫ/ἥ$உ;->உ(L㚬/䂻/ᓭ/ಫ/ᆻ;Z)V

    :cond_1
    return-void
.end method

.method public ಫ(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㭲:Z

    iget-object p1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ḓ:L㚬/䂻/ᓭ/ಫ/䆀;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/䆀;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public ม(I)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/㥁;->ཇ(I)V

    return-void
.end method

.method public ბ(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ཇ:Landroid/view/View;

    return-void
.end method

.method public ᆻ()V
    .locals 2

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㲝;->㫏()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ḙ(I)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0, p1}, L㚬/䂻/ბ/㥁;->㺴(I)V

    return-void
.end method

.method public ℓ(L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ბ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    return-void
.end method

.method public ㄏ(L㚬/䂻/ᓭ/ಫ/㞘;)Z
    .locals 9

    invoke-virtual {p1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, L㚬/䂻/ᓭ/ಫ/㹖;

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㚬:Landroid/content/Context;

    iget-object v5, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ᓭ:Landroid/view/View;

    iget-boolean v6, p0, L㚬/䂻/ᓭ/ಫ/㲝;->䆀:Z

    iget v7, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ℓ:I

    iget v8, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ㄏ:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, L㚬/䂻/ᓭ/ಫ/㹖;-><init>(Landroid/content/Context;L㚬/䂻/ᓭ/ಫ/ᆻ;Landroid/view/View;ZII)V

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ბ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    invoke-virtual {v0, v2}, L㚬/䂻/ᓭ/ಫ/㹖;->ಫ(L㚬/䂻/ᓭ/ಫ/ἥ$உ;)V

    invoke-static {p1}, L㚬/䂻/ᓭ/ಫ/㧦;->㲧(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z

    move-result v2

    invoke-virtual {v0, v2}, L㚬/䂻/ᓭ/ಫ/㹖;->ᆻ(Z)V

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ἥ:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, L㚬/䂻/ᓭ/ಫ/㹖;->ㄏ(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ἥ:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v2, v1}, L㚬/䂻/ᓭ/ಫ/ᆻ;->ḓ(Z)V

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v2}, L㚬/䂻/ბ/㥁;->ḓ()I

    move-result v2

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v3}, L㚬/䂻/ბ/㥁;->ℓ()I

    move-result v3

    iget v4, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㖪:I

    iget-object v5, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ཇ:Landroid/view/View;

    invoke-static {v5}, L㚬/ℓ/ἥ/㭲;->ม(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ཇ:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    :cond_0
    invoke-virtual {v0, v2, v3}, L㚬/䂻/ᓭ/ಫ/㹖;->ཇ(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ბ:L㚬/䂻/ᓭ/ಫ/ἥ$உ;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, L㚬/䂻/ᓭ/ಫ/ἥ$உ;->䂻(L㚬/䂻/ᓭ/ಫ/ᆻ;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public 㖪(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ἥ:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public 㚬()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 㞘(Z)V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ḓ:L㚬/䂻/ᓭ/ಫ/䆀;

    invoke-virtual {v0, p1}, L㚬/䂻/ᓭ/ಫ/䆀;->㺴(Z)V

    return-void
.end method

.method public 㢏(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㢏:Z

    return-void
.end method

.method public 㧦(L㚬/䂻/ᓭ/ಫ/ᆻ;)V
    .locals 0

    return-void
.end method

.method public final 㫏()Z
    .locals 7

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㲝;->䂻()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㞘:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ཇ:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ᓭ:Landroid/view/View;

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0, p0}, L㚬/䂻/ბ/㥁;->ᰘ(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0, p0}, L㚬/䂻/ბ/㥁;->ᱹ(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/㥁;->㨃(Z)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ᓭ:Landroid/view/View;

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㲝:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㲝:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㧦:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㹖:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v3, v0}, L㚬/䂻/ბ/㥁;->㫏(Landroid/view/View;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    iget v3, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㖪:I

    invoke-virtual {v0, v3}, L㚬/䂻/ბ/㥁;->ڈ(I)V

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㭲:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ḓ:L㚬/䂻/ᓭ/ಫ/䆀;

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㚬:Landroid/content/Context;

    iget v5, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ᆻ:I

    invoke-static {v0, v3, v4, v5}, L㚬/䂻/ᓭ/ಫ/㧦;->ᓭ(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ḙ:I

    iput-boolean v1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㭲:Z

    :cond_4
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    iget v4, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ḙ:I

    invoke-virtual {v0, v4}, L㚬/䂻/ბ/㥁;->ᾦ(I)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, L㚬/䂻/ბ/㥁;->ש(I)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {p0}, L㚬/䂻/ᓭ/ಫ/㧦;->ཇ()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, L㚬/䂻/ბ/㥁;->㰫(Landroid/graphics/Rect;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->ᆻ()V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->㹖()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㢏:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v4}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲧()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㚬:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, L㚬/䂻/ᆻ;->㹖:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v6, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㺴:L㚬/䂻/ᓭ/ಫ/ᆻ;

    invoke-virtual {v6}, L㚬/䂻/ᓭ/ಫ/ᆻ;->㲧()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    iget-object v2, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ḓ:L㚬/䂻/ᓭ/ಫ/䆀;

    invoke-virtual {v0, v2}, L㚬/䂻/ბ/㥁;->ᓭ(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->ᆻ()V

    return v1

    :cond_7
    :goto_1
    return v2
.end method

.method public 㭲(I)V
    .locals 0

    iput p1, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㖪:I

    return-void
.end method

.method public 㹖()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->㹖()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public 䂻()Z
    .locals 1

    iget-boolean v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->㞘:Z

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ᓭ/ಫ/㲝;->ಫ:L㚬/䂻/ბ/㖆;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->䂻()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
