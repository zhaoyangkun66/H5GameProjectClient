.class public L㺴/㚬/உ/䂻/㖆/㺴$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㖆/㺴;->உ()V
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

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$㺴;->䂻:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$㺴;->䂻:L㺴/㚬/உ/䂻/㖆/㺴;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/㺴$㺴;->䂻:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {v0, p1}, L㺴/㚬/உ/䂻/㖆/㺴;->㹖(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
