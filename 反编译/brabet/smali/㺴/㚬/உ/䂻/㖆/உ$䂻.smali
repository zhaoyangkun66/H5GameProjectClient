.class public L㺴/㚬/உ/䂻/㖆/உ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$䆀;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㖆/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㺴/㚬/உ/䂻/㖆/உ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/உ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$䂻;->உ:L㺴/㚬/உ/䂻/㖆/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, L㺴/㚬/உ/䂻/㖆/உ;->㺴(Landroid/text/Editable;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$䂻;->உ:L㺴/㚬/உ/䂻/㖆/உ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/உ;->ᆻ(L㺴/㚬/உ/䂻/㖆/உ;)Landroid/text/TextWatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$䂻;->உ:L㺴/㚬/உ/䂻/㖆/உ;

    invoke-static {p1}, L㺴/㚬/உ/䂻/㖆/உ;->ᆻ(L㺴/㚬/உ/䂻/㖆/உ;)Landroid/text/TextWatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
