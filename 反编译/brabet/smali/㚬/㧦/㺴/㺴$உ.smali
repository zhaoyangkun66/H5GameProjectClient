.class public L㚬/㧦/㺴/㺴$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㧦/㺴/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/㧦/㺴/㺴;


# direct methods
.method public constructor <init>(L㚬/㧦/㺴/㺴;)V
    .locals 0

    iput-object p1, p0, L㚬/㧦/㺴/㺴$உ;->䂻:L㚬/㧦/㺴/㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object v0, p0, L㚬/㧦/㺴/㺴$உ;->䂻:L㚬/㧦/㺴/㺴;

    invoke-static {v0}, L㚬/㧦/㺴/㺴;->access$100(L㚬/㧦/㺴/㺴;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, L㚬/㧦/㺴/㺴$உ;->䂻:L㚬/㧦/㺴/㺴;

    invoke-static {v1}, L㚬/㧦/㺴/㺴;->access$000(L㚬/㧦/㺴/㺴;)Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
