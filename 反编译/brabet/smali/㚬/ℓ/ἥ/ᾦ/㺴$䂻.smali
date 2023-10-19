.class public L㚬/ℓ/ἥ/ᾦ/㺴$䂻;
.super L㚬/ℓ/ἥ/ᾦ/㺴$உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ἥ/ᾦ/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# direct methods
.method public constructor <init>(L㚬/ℓ/ἥ/ᾦ/㺴;)V
    .locals 0

    invoke-direct {p0, p1}, L㚬/ℓ/ἥ/ᾦ/㺴$உ;-><init>(L㚬/ℓ/ἥ/ᾦ/㺴;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ἥ/ᾦ/㺴$உ;->உ:L㚬/ℓ/ἥ/ᾦ/㺴;

    invoke-virtual {v0, p1}, L㚬/ℓ/ἥ/ᾦ/㺴;->㚬(I)L㚬/ℓ/ἥ/ᾦ/㚬;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->Ꭿ()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method
