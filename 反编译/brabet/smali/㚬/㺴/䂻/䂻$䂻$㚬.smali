.class public L㚬/㺴/䂻/䂻$䂻$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㺴/䂻/䂻$䂻;->㢏(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/㺴/䂻/䂻$䂻;

.field public final synthetic 䂻:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(L㚬/㺴/䂻/䂻$䂻;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, L㚬/㺴/䂻/䂻$䂻$㚬;->㚬:L㚬/㺴/䂻/䂻$䂻;

    iput-object p2, p0, L㚬/㺴/䂻/䂻$䂻$㚬;->䂻:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㚬/㺴/䂻/䂻$䂻$㚬;->㚬:L㚬/㺴/䂻/䂻$䂻;

    iget-object v0, v0, L㚬/㺴/䂻/䂻$䂻;->䂻:L㚬/㺴/䂻/உ;

    iget-object v1, p0, L㚬/㺴/䂻/䂻$䂻$㚬;->䂻:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, L㚬/㺴/䂻/உ;->䂻(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
