.class public L㺴/㚬/உ/䂻/㖆/㺴$ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㖆/㺴;->ᾦ(Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㺴/㚬/உ/䂻/㖆/㺴;

.field public final synthetic 䂻:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$ḓ;->㚬:L㺴/㚬/உ/䂻/㖆/㺴;

    iput-object p2, p0, L㺴/㚬/உ/䂻/㖆/㺴$ḓ;->䂻:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/㺴$ḓ;->㚬:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {p2}, L㺴/㚬/உ/䂻/㖆/㺴;->䆀(L㺴/㚬/உ/䂻/㖆/㺴;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/㺴$ḓ;->㚬:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {p2, v0}, L㺴/㚬/உ/䂻/㖆/㺴;->ಫ(L㺴/㚬/உ/䂻/㖆/㺴;Z)Z

    :cond_0
    iget-object p2, p0, L㺴/㚬/உ/䂻/㖆/㺴$ḓ;->㚬:L㺴/㚬/உ/䂻/㖆/㺴;

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴$ḓ;->䂻:Landroid/widget/AutoCompleteTextView;

    invoke-static {p2, v1}, L㺴/㚬/உ/䂻/㖆/㺴;->㹖(L㺴/㚬/உ/䂻/㖆/㺴;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    return v0
.end method
