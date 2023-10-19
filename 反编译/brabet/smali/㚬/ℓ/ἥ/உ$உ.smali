.class public final L㚬/ℓ/ἥ/உ$உ;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ἥ/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u0b89"
.end annotation


# instance fields
.field public final உ:L㚬/ℓ/ἥ/உ;


# direct methods
.method public constructor <init>(L㚬/ℓ/ἥ/உ;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, L㚬/ℓ/ἥ/உ$உ;->உ:L㚬/ℓ/ἥ/உ;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ$உ;->உ:L㚬/ℓ/ἥ/உ;

    invoke-virtual {v0, p1, p2}, L㚬/ℓ/ἥ/உ;->உ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ$உ;->உ:L㚬/ℓ/ἥ/உ;

    invoke-virtual {v0, p1}, L㚬/ℓ/ἥ/உ;->䂻(Landroid/view/View;)L㚬/ℓ/ἥ/ᾦ/㺴;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, L㚬/ℓ/ἥ/ᾦ/㺴;->㺴()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ$உ;->உ:L㚬/ℓ/ἥ/உ;

    invoke-virtual {v0, p1, p2}, L㚬/ℓ/ἥ/உ;->䆀(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-static {p2}, L㚬/ℓ/ἥ/ᾦ/㚬;->ध(Landroid/view/accessibility/AccessibilityNodeInfo;)L㚬/ℓ/ἥ/ᾦ/㚬;

    move-result-object v0

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->Ԁ(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, L㚬/ℓ/ἥ/ᾦ/㚬;->ⷜ(Z)V

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㥁(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, L㚬/ℓ/ἥ/ᾦ/㚬;->㠭(Z)V

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㹖(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, L㚬/ℓ/ἥ/ᾦ/㚬;->䆍(Ljava/lang/CharSequence;)V

    iget-object v1, p0, L㚬/ℓ/ἥ/உ$உ;->உ:L㚬/ℓ/ἥ/உ;

    invoke-virtual {v1, p1, v0}, L㚬/ℓ/ἥ/உ;->ᆻ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->ḓ(Ljava/lang/CharSequence;Landroid/view/View;)V

    invoke-static {p1}, L㚬/ℓ/ἥ/உ;->㚬(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ℓ/ἥ/ᾦ/㚬$உ;

    invoke-virtual {v0, v1}, L㚬/ℓ/ἥ/ᾦ/㚬;->䂻(L㚬/ℓ/ἥ/ᾦ/㚬$உ;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ$உ;->உ:L㚬/ℓ/ἥ/உ;

    invoke-virtual {v0, p1, p2}, L㚬/ℓ/ἥ/உ;->ℓ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ$உ;->உ:L㚬/ℓ/ἥ/உ;

    invoke-virtual {v0, p1, p2, p3}, L㚬/ℓ/ἥ/உ;->ㄏ(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ$உ;->உ:L㚬/ℓ/ἥ/உ;

    invoke-virtual {v0, p1, p2, p3}, L㚬/ℓ/ἥ/உ;->ಫ(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ$உ;->உ:L㚬/ℓ/ἥ/உ;

    invoke-virtual {v0, p1, p2}, L㚬/ℓ/ἥ/உ;->㹖(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/உ$உ;->உ:L㚬/ℓ/ἥ/உ;

    invoke-virtual {v0, p1, p2}, L㚬/ℓ/ἥ/உ;->ἥ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
