.class public L㚬/ℓ/ἥ/உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ℓ/ἥ/உ$உ;
    }
.end annotation


# static fields
.field public static final 㚬:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field public final உ:Landroid/view/View$AccessibilityDelegate;

.field public final 䂻:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, L㚬/ℓ/ἥ/உ;->㚬:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, L㚬/ℓ/ἥ/உ;->㚬:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0, v0}, L㚬/ℓ/ἥ/உ;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ℓ/ἥ/உ;->உ:Landroid/view/View$AccessibilityDelegate;

    new-instance p1, L㚬/ℓ/ἥ/உ$உ;

    invoke-direct {p1, p0}, L㚬/ℓ/ἥ/உ$உ;-><init>(L㚬/ℓ/ἥ/உ;)V

    iput-object p1, p0, L㚬/ℓ/ἥ/உ;->䂻:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public static 㚬(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "L\u36ac/\u2113/\u1f25/\u1fa6/\u36ac$\u0b89;",
            ">;"
        }
    .end annotation

    sget v0, L㚬/ℓ/䂻;->䂻:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public உ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ;->உ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public ಫ(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    invoke-static {p1}, L㚬/ℓ/ἥ/உ;->㚬(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, L㚬/ℓ/ἥ/ᾦ/㚬$உ;

    invoke-virtual {v3}, L㚬/ℓ/ἥ/ᾦ/㚬$உ;->䂻()I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-virtual {v3, p1, p3}, L㚬/ℓ/ἥ/ᾦ/㚬$உ;->㺴(Landroid/view/View;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    iget-object v0, p0, L㚬/ℓ/ἥ/உ;->உ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    sget v0, L㚬/ℓ/䂻;->உ:I

    if-ne p2, v0, :cond_3

    const/4 p2, -0x1

    const-string v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, L㚬/ℓ/ἥ/உ;->㧦(ILandroid/view/View;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public ᆻ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ;->உ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p2}, L㚬/ℓ/ἥ/ᾦ/㚬;->Ꭿ()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public final ḓ(Landroid/text/style/ClickableSpan;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, L㚬/ℓ/ἥ/ᾦ/㚬;->ბ(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public ἥ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ;->உ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public ℓ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ;->உ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public ㄏ(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ;->உ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final 㧦(ILandroid/view/View;)Z
    .locals 1

    sget v0, L㚬/ℓ/䂻;->㚬:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p0, p1, p2}, L㚬/ℓ/ἥ/உ;->ḓ(Landroid/text/style/ClickableSpan;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public 㹖(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ;->உ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public 㺴()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ;->䂻:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public 䂻(Landroid/view/View;)L㚬/ℓ/ἥ/ᾦ/㺴;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, L㚬/ℓ/ἥ/உ;->உ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, L㚬/ℓ/ἥ/ᾦ/㺴;

    invoke-direct {v0, p1}, L㚬/ℓ/ἥ/ᾦ/㺴;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public 䆀(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ;->உ:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
