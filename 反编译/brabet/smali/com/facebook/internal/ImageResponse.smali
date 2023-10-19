.class public final Lcom/facebook/internal/ImageResponse;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final error:Ljava/lang/Exception;

.field private final isCachedRedirect:Z

.field private final request:Lcom/facebook/internal/ImageRequest;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/ImageResponse;->request:Lcom/facebook/internal/ImageRequest;

    iput-object p2, p0, Lcom/facebook/internal/ImageResponse;->error:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/facebook/internal/ImageResponse;->isCachedRedirect:Z

    iput-object p4, p0, Lcom/facebook/internal/ImageResponse;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/ImageResponse;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/ImageResponse;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getRequest()Lcom/facebook/internal/ImageRequest;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/ImageResponse;->request:Lcom/facebook/internal/ImageRequest;

    return-object v0
.end method

.method public final isCachedRedirect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/ImageResponse;->isCachedRedirect:Z

    return v0
.end method
