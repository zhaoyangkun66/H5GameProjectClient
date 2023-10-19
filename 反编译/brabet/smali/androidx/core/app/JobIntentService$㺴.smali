.class public final Landroidx/core/app/JobIntentService$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/app/JobIntentService$ḓ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u3eb4"
.end annotation


# instance fields
.field public final உ:Landroid/content/Intent;

.field public final synthetic 㚬:Landroidx/core/app/JobIntentService;

.field public final 䂻:I


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/JobIntentService$㺴;->㚬:Landroidx/core/app/JobIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/core/app/JobIntentService$㺴;->உ:Landroid/content/Intent;

    iput p3, p0, Landroidx/core/app/JobIntentService$㺴;->䂻:I

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/JobIntentService$㺴;->உ:Landroid/content/Intent;

    return-object v0
.end method

.method public உ()V
    .locals 2

    iget-object v0, p0, Landroidx/core/app/JobIntentService$㺴;->㚬:Landroidx/core/app/JobIntentService;

    iget v1, p0, Landroidx/core/app/JobIntentService$㺴;->䂻:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method
