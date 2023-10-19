.class public L㺴/㚬/உ/䂻/㖆/㺴$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$䆀;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㖆/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/㖆/㺴;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/㺴;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$㚬;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/㺴$㚬;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, L㺴/㚬/உ/䂻/㖆/㺴;->㺴(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴$㚬;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {v1, v0}, L㺴/㚬/உ/䂻/㖆/㺴;->ἥ(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴$㚬;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {v1, v0}, L㺴/㚬/உ/䂻/㖆/㺴;->ཇ(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴$㚬;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {v1, v0}, L㺴/㚬/உ/䂻/㖆/㺴;->ᓭ(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴$㚬;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {v1}, L㺴/㚬/உ/䂻/㖆/㺴;->ბ(L㺴/㚬/உ/䂻/㖆/㺴;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴$㚬;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {v1}, L㺴/㚬/உ/䂻/㖆/㺴;->ბ(L㺴/㚬/உ/䂻/㖆/㺴;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/㺴$㚬;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {v0}, L㺴/㚬/உ/䂻/㖆/㺴;->㲝(L㺴/㚬/உ/䂻/㖆/㺴;)Lcom/google/android/material/textfield/TextInputLayout$ḓ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$ḓ;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
