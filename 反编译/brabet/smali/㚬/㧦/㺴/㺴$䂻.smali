.class public L㚬/㧦/㺴/㺴$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, L㚬/㧦/㺴/㺴$䂻;->䂻:L㚬/㧦/㺴/㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object p1, p0, L㚬/㧦/㺴/㺴$䂻;->䂻:L㚬/㧦/㺴/㺴;

    invoke-static {p1}, L㚬/㧦/㺴/㺴;->access$000(L㚬/㧦/㺴/㺴;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, L㚬/㧦/㺴/㺴$䂻;->䂻:L㚬/㧦/㺴/㺴;

    invoke-static {p1}, L㚬/㧦/㺴/㺴;->access$000(L㚬/㧦/㺴/㺴;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, L㚬/㧦/㺴/㺴;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
