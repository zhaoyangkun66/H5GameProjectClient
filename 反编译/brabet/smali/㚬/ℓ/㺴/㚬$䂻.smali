.class public L㚬/ℓ/㺴/㚬$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ℓ/㺴/㚬;->ㄏ(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/ℓ/㺴/㚬$㺴;

.field public final synthetic 䂻:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;L㚬/ℓ/㺴/㚬$㺴;)V
    .locals 0

    iput-object p1, p0, L㚬/ℓ/㺴/㚬$䂻;->䂻:Landroid/app/Application;

    iput-object p2, p0, L㚬/ℓ/㺴/㚬$䂻;->㚬:L㚬/ℓ/㺴/㚬$㺴;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㚬/ℓ/㺴/㚬$䂻;->䂻:Landroid/app/Application;

    iget-object v1, p0, L㚬/ℓ/㺴/㚬$䂻;->㚬:L㚬/ℓ/㺴/㚬$㺴;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
