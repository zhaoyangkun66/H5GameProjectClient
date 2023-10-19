.class public L㺴/㚬/உ/䂻/㖆/㺴$உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㺴/㚬/உ/䂻/㖆/㺴$உ;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㺴/㚬/உ/䂻/㖆/㺴$உ;

.field public final synthetic 䂻:Landroid/widget/AutoCompleteTextView;


# direct methods
.method public constructor <init>(L㺴/㚬/உ/䂻/㖆/㺴$உ;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, L㺴/㚬/உ/䂻/㖆/㺴$உ$உ;->㚬:L㺴/㚬/உ/䂻/㖆/㺴$உ;

    iput-object p2, p0, L㺴/㚬/உ/䂻/㖆/㺴$உ$உ;->䂻:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㺴/㚬/உ/䂻/㖆/㺴$உ$உ;->䂻:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴$உ$உ;->㚬:L㺴/㚬/உ/䂻/㖆/㺴$உ;

    iget-object v1, v1, L㺴/㚬/உ/䂻/㖆/㺴$உ;->䂻:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {v1, v0}, L㺴/㚬/உ/䂻/㖆/㺴;->ḓ(L㺴/㚬/உ/䂻/㖆/㺴;Z)V

    iget-object v1, p0, L㺴/㚬/உ/䂻/㖆/㺴$உ$உ;->㚬:L㺴/㚬/உ/䂻/㖆/㺴$உ;

    iget-object v1, v1, L㺴/㚬/உ/䂻/㖆/㺴$உ;->䂻:L㺴/㚬/உ/䂻/㖆/㺴;

    invoke-static {v1, v0}, L㺴/㚬/உ/䂻/㖆/㺴;->ಫ(L㺴/㚬/உ/䂻/㖆/㺴;Z)Z

    return-void
.end method
