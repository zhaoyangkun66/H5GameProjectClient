.class public final Lcom/facebook/login/widget/ProfilePictureView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;,
        Lcom/facebook/login/widget/ProfilePictureView$Companion;
    }
.end annotation


# static fields
.field private static final BITMAP_HEIGHT_KEY:Ljava/lang/String; = "ProfilePictureView_height"

.field private static final BITMAP_KEY:Ljava/lang/String; = "ProfilePictureView_bitmap"

.field private static final BITMAP_WIDTH_KEY:Ljava/lang/String; = "ProfilePictureView_width"

.field public static final CUSTOM:I = -0x1

.field public static final Companion:Lcom/facebook/login/widget/ProfilePictureView$Companion;

.field private static final IS_CROPPED_DEFAULT_VALUE:Z = true

.field private static final IS_CROPPED_KEY:Ljava/lang/String; = "ProfilePictureView_isCropped"

.field public static final LARGE:I = -0x4

.field private static final MIN_SIZE:I = 0x1

.field public static final NORMAL:I = -0x3

.field private static final PENDING_REFRESH_KEY:Ljava/lang/String; = "ProfilePictureView_refresh"

.field private static final PRESET_SIZE_KEY:Ljava/lang/String; = "ProfilePictureView_presetSize"

.field private static final PROFILE_ID_KEY:Ljava/lang/String; = "ProfilePictureView_profileId"

.field public static final SMALL:I = -0x2

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "ProfilePictureView_superState"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

.field private final image:Landroid/widget/ImageView;

.field private imageContents:Landroid/graphics/Bitmap;

.field private isCropped:Z

.field private lastRequest:Lcom/facebook/internal/ImageRequest;

.field private onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

.field private presetSize:I

.field private profileId:Ljava/lang/String;

.field private profileTracker:Lcom/facebook/ProfileTracker;

.field private queryHeight:I

.field private queryWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/login/widget/ProfilePictureView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/widget/ProfilePictureView$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/login/widget/ProfilePictureView;->Companion:Lcom/facebook/login/widget/ProfilePictureView$Companion;

    const-class v0, Lcom/facebook/login/widget/ProfilePictureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfilePictureView::class.java.simpleName"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/login/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSize:I

    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSize:I

    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->initialize()V

    invoke-direct {p0, p2}, Lcom/facebook/login/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSize:I

    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->initialize()V

    invoke-direct {p0, p2}, Lcom/facebook/login/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/login/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$refreshImage(Lcom/facebook/login/widget/ProfilePictureView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    return-void
.end method

.method private final getPresetSizeInPixels(Z)I
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSize:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, -0x4

    if-eq v0, p1, :cond_4

    const/4 p1, -0x3

    if-eq v0, p1, :cond_2

    const/4 p1, -0x2

    if-eq v0, p1, :cond_3

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    sget p1, Lcom/facebook/login/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    goto :goto_0

    :cond_3
    sget p1, Lcom/facebook/login/R$dimen;->com_facebook_profilepictureview_preset_size_small:I

    goto :goto_0

    :cond_4
    sget p1, Lcom/facebook/login/R$dimen;->com_facebook_profilepictureview_preset_size_large:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private final getProfilePictureUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    sget-object v0, Lcom/facebook/Profile;->Companion:Lcom/facebook/Profile$Companion;

    invoke-virtual {v0}, Lcom/facebook/Profile$Companion;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v1}, Lcom/facebook/AccessToken$Companion;->isLoggedInWithInstagram()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    iget v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/facebook/Profile;->getProfilePictureUri(II)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/internal/ImageRequest;->Companion:Lcom/facebook/internal/ImageRequest$Companion;

    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    iget v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/facebook/internal/ImageRequest$Companion;->getProfilePictureUri(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final initialize()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/facebook/login/widget/ProfilePictureView$initialize$1;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/ProfilePictureView$initialize$1;-><init>(Lcom/facebook/login/widget/ProfilePictureView;)V

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileTracker:Lcom/facebook/ProfileTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final isUnspecifiedDimensions()Z
    .locals 1

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final parseAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/login/R$styleable;->com_facebook_profile_picture_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.obtainStyledAttributes(attrs, R.styleable.com_facebook_profile_picture_view)"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/facebook/login/R$styleable;->com_facebook_profile_picture_view_com_facebook_preset_size:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setPresetSize(I)V

    sget v0, Lcom/facebook/login/R$styleable;->com_facebook_profile_picture_view_com_facebook_is_cropped:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setCropped(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final processResponse(Lcom/facebook/internal/ImageResponse;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/facebook/FacebookException;

    const-string v2, "Error in downloading profile picture for profileId: "

    iget-object v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-static {v2, v3}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x6

    sget-object v3, Lcom/facebook/login/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->isCachedRedirect()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->sendImageRequest(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private final refreshImage(Z)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->updateImageQueryParameters()Z

    move-result v0

    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->isUnspecifiedDimensions()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_5

    :cond_3
    invoke-direct {p0, v2}, Lcom/facebook/login/widget/ProfilePictureView;->sendImageRequest(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->setBlankProfilePicture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final sendImageRequest(Z)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->isCurrentAccessTokenActive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v0

    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lcom/facebook/login/widget/ProfilePictureView;->getProfilePictureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/facebook/internal/ImageRequest$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v1, p1}, Lcom/facebook/internal/ImageRequest$Builder;->setAllowCachedRedirects(Z)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object p1

    new-instance v0, L㺴/உ/㫏/㞘/ḓ;

    invoke-direct {v0, p0}, L㺴/உ/㫏/㞘/ḓ;-><init>(Lcom/facebook/login/widget/ProfilePictureView;)V

    invoke-virtual {p1, v0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->INSTANCE:Lcom/facebook/internal/ImageDownloader;

    invoke-static {v0}, Lcom/facebook/internal/ImageDownloader;->cancelRequest(Lcom/facebook/internal/ImageRequest;)Z

    :goto_1
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    sget-object v0, Lcom/facebook/internal/ImageDownloader;->INSTANCE:Lcom/facebook/internal/ImageDownloader;

    invoke-static {p1}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static final sendImageRequest$lambda-2(Lcom/facebook/login/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->processResponse(Lcom/facebook/internal/ImageResponse;)V

    return-void
.end method

.method private final setBlankProfilePicture()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->INSTANCE:Lcom/facebook/internal/ImageDownloader;

    invoke-static {v0}, Lcom/facebook/internal/ImageDownloader;->cancelRequest(Lcom/facebook/internal/ImageRequest;)Z

    :goto_0
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/login/R$drawable;->com_facebook_profile_picture_blank_square:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/facebook/login/R$drawable;->com_facebook_profile_picture_blank_portrait:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->updateImageQueryParameters()Z

    iget v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    iget v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final updateImageQueryParameters()Z
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_8

    if-ge v0, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/login/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v4

    move v2, v0

    :cond_2
    if-gt v2, v0, :cond_4

    iget-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    if-ne v2, v4, :cond_7

    iget v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    if-eq v0, v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_1
    iput v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :cond_8
    :goto_2
    return v1

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public static synthetic உ(Lcom/facebook/login/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->sendImageRequest$lambda-2(Lcom/facebook/login/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V

    return-void
.end method


# virtual methods
.method public final getOnErrorListener()Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

    return-object v0
.end method

.method public final getPresetSize()I
    .locals 1

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSize:I

    return v0
.end method

.method public final getProfileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldUpdateOnProfileChange()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileTracker:Lcom/facebook/ProfileTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ProfileTracker;->isTracking()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final isCropped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v3, v6, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v5}, Lcom/facebook/login/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    if-eq v7, v6, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v4, :cond_1

    invoke-direct {p0, v5}, Lcom/facebook/login/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {p0, v2, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->measureChildren(II)V

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ProfilePictureView_superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ProfilePictureView_profileId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setProfileId(Ljava/lang/String;)V

    const-string v0, "ProfilePictureView_presetSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setPresetSize(I)V

    const-string v0, "ProfilePictureView_isCropped"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setCropped(Z)V

    const-string v0, "ProfilePictureView_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    const-string v0, "ProfilePictureView_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ProfilePictureView_superState"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    const-string v2, "ProfilePictureView_profileId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSize:I

    const-string v2, "ProfilePictureView_presetSize"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const-string v2, "ProfilePictureView_isCropped"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    const-string v2, "ProfilePictureView_width"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    const-string v2, "ProfilePictureView_height"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "ProfilePictureView_refresh"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public final setCropped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    return-void
.end method

.method public final setDefaultProfilePicture(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setOnErrorListener(Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

    return-void
.end method

.method public final setPresetSize(I)V
    .locals 1

    const/4 v0, -0x4

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use a predefined preset size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final setProfileId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lḓ/ḙ/ཇ;->䆀(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->setBlankProfilePicture()V

    const/4 v1, 0x1

    :cond_3
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    return-void
.end method

.method public final setShouldUpdateOnProfileChange(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileTracker:Lcom/facebook/ProfileTracker;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ProfileTracker;->startTracking()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileTracker:Lcom/facebook/ProfileTracker;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ProfileTracker;->stopTracking()V

    :goto_0
    return-void
.end method
