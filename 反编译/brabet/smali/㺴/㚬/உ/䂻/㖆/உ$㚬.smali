.class public L㺴/㚬/உ/䂻/㖆/உ$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㖆/உ;->உ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㺴/㚬/உ/䂻/㖆/உ;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/உ;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$㚬;->䂻:L㺴/㚬/உ/䂻/㖆/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/உ$㚬;->䂻:L㺴/㚬/உ/䂻/㖆/உ;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
