.class public final synthetic L㺴/உ/ㄬ/ཇ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ḓ:Landroid/graphics/Bitmap;

.field public final synthetic 㚬:Ljava/lang/Exception;

.field public final synthetic 㺴:Z

.field public final synthetic 䂻:Lcom/facebook/internal/ImageRequest;

.field public final synthetic 䆀:Lcom/facebook/internal/ImageRequest$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ㄬ/ཇ;->䂻:Lcom/facebook/internal/ImageRequest;

    iput-object p2, p0, L㺴/உ/ㄬ/ཇ;->㚬:Ljava/lang/Exception;

    iput-boolean p3, p0, L㺴/உ/ㄬ/ཇ;->㺴:Z

    iput-object p4, p0, L㺴/உ/ㄬ/ཇ;->ḓ:Landroid/graphics/Bitmap;

    iput-object p5, p0, L㺴/உ/ㄬ/ཇ;->䆀:Lcom/facebook/internal/ImageRequest$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, L㺴/உ/ㄬ/ཇ;->䂻:Lcom/facebook/internal/ImageRequest;

    iget-object v1, p0, L㺴/உ/ㄬ/ཇ;->㚬:Ljava/lang/Exception;

    iget-boolean v2, p0, L㺴/உ/ㄬ/ཇ;->㺴:Z

    iget-object v3, p0, L㺴/உ/ㄬ/ཇ;->ḓ:Landroid/graphics/Bitmap;

    iget-object v4, p0, L㺴/உ/ㄬ/ཇ;->䆀:Lcom/facebook/internal/ImageRequest$Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/internal/ImageDownloader;->உ(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    return-void
.end method
