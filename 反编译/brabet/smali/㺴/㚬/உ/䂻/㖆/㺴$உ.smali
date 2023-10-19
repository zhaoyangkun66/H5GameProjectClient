.class public L㺴/㚬/உ/䂻/㖆/㺴$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㖆/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㺴/㚬/உ/䂻/㖆/㺴;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/㺴;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$உ;->䂻:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$உ;->䂻:L㺴/㚬/உ/䂻/㖆/㺴;

    iget-object v0, p1, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, L㺴/㚬/உ/䂻/㖆/㺴;->㺴(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    new-instance v0, L㺴/㚬/உ/䂻/㖆/㺴$உ$உ;

    invoke-direct {v0, p0, p1}, L㺴/㚬/உ/䂻/㖆/㺴$உ$உ;-><init>(L㺴/㚬/உ/䂻/㖆/㺴$உ;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
