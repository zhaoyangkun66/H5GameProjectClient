.class public L㺴/㚬/உ/䂻/㖆/㺴$䂻;
.super Lcom/google/android/material/textfield/TextInputLayout$ḓ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㖆/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ḓ:L㺴/㚬/உ/䂻/㖆/㺴;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/㺴;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$䂻;->ḓ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout$ḓ;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public ᆻ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$ḓ;->ᆻ(Landroid/view/View;L㚬/ℓ/ἥ/ᾦ/㚬;)V

    const-class p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->ᇿ(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, L㚬/ℓ/ἥ/ᾦ/㚬;->ർ()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, L㚬/ℓ/ἥ/ᾦ/㚬;->䋡(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public ℓ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, L㚬/ℓ/ἥ/உ;->ℓ(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$䂻;->ḓ:L㺴/㚬/உ/䂻/㖆/㺴;

    iget-object v0, p1, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, L㺴/㚬/உ/䂻/㖆/㺴;->㺴(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/㺴$䂻;->ḓ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {p2}, L㺴/㚬/உ/䂻/㖆/㺴;->㧦(L㺴/㚬/உ/䂻/㖆/㺴;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/㺴$䂻;->ḓ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {p2, p1}, L㺴/㚬/உ/䂻/㖆/㺴;->㹖(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V

    :cond_0
    return-void
.end method
