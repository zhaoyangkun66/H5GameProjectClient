.class public L㺴/㚬/உ/䂻/㖆/㺴$䆀;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㖆/㺴;->ᾦ(Landroid/widget/AutoCompleteTextView;)V
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

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$䆀;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$䆀;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    iget-object p1, p1, L㺴/㚬/உ/䂻/㖆/ḓ;->உ:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_0

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$䆀;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    const/4 p2, 0x0

    invoke-static {p1, p2}, L㺴/㚬/உ/䂻/㖆/㺴;->ḓ(L㺴/㚬/உ/䂻/㖆/㺴;Z)V

    iget-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$䆀;->உ:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {p1, p2}, L㺴/㚬/உ/䂻/㖆/㺴;->ಫ(L㺴/㚬/உ/䂻/㖆/㺴;Z)Z

    :cond_0
    return-void
.end method
