.class public L䂻/உ/䂻/㚬/䂻$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L䂻/உ/䂻/㚬/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u36ac"
.end annotation


# instance fields
.field public final 㚬:Landroid/os/Bundle;

.field public final synthetic 㺴:L䂻/உ/䂻/㚬/䂻;

.field public final 䂻:I


# direct methods
.method public constructor <init>(L䂻/உ/䂻/㚬/䂻;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, L䂻/உ/䂻/㚬/䂻$㚬;->㺴:L䂻/உ/䂻/㚬/䂻;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, L䂻/உ/䂻/㚬/䂻$㚬;->䂻:I

    iput-object p3, p0, L䂻/உ/䂻/㚬/䂻$㚬;->㚬:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, L䂻/உ/䂻/㚬/䂻$㚬;->㺴:L䂻/உ/䂻/㚬/䂻;

    iget v1, p0, L䂻/உ/䂻/㚬/䂻$㚬;->䂻:I

    iget-object v2, p0, L䂻/உ/䂻/㚬/䂻$㚬;->㚬:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, L䂻/உ/䂻/㚬/䂻;->ಫ(ILandroid/os/Bundle;)V

    return-void
.end method
