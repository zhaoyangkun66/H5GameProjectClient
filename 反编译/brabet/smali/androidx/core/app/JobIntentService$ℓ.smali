.class public abstract Landroidx/core/app/JobIntentService$ℓ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u2113"
.end annotation


# instance fields
.field public final உ:Landroid/content/ComponentName;

.field public 㚬:I

.field public 䂻:Z


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/JobIntentService$ℓ;->உ:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public உ(I)V
    .locals 3

    iget-boolean v0, p0, Landroidx/core/app/JobIntentService$ℓ;->䂻:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService$ℓ;->䂻:Z

    iput p1, p0, Landroidx/core/app/JobIntentService$ℓ;->㚬:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/core/app/JobIntentService$ℓ;->㚬:I

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given job ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different than previous "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/core/app/JobIntentService$ℓ;->㚬:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public 㚬()V
    .locals 0

    return-void
.end method

.method public 㺴()V
    .locals 0

    return-void
.end method

.method public 䂻()V
    .locals 0

    return-void
.end method
