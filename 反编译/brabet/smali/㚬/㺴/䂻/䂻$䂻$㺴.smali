.class public L㚬/㺴/䂻/䂻$䂻$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/㺴/䂻/䂻$䂻;->㭲(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Landroid/os/Bundle;

.field public final synthetic 㺴:L㚬/㺴/䂻/䂻$䂻;

.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public constructor <init>(L㚬/㺴/䂻/䂻$䂻;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, L㚬/㺴/䂻/䂻$䂻$㺴;->㺴:L㚬/㺴/䂻/䂻$䂻;

    iput-object p2, p0, L㚬/㺴/䂻/䂻$䂻$㺴;->䂻:Ljava/lang/String;

    iput-object p3, p0, L㚬/㺴/䂻/䂻$䂻$㺴;->㚬:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, L㚬/㺴/䂻/䂻$䂻$㺴;->㺴:L㚬/㺴/䂻/䂻$䂻;

    iget-object v0, v0, L㚬/㺴/䂻/䂻$䂻;->䂻:L㚬/㺴/䂻/உ;

    iget-object v1, p0, L㚬/㺴/䂻/䂻$䂻$㺴;->䂻:Ljava/lang/String;

    iget-object v2, p0, L㚬/㺴/䂻/䂻$䂻$㺴;->㚬:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, L㚬/㺴/䂻/உ;->㺴(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
