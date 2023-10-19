.class public final synthetic L㺴/உ/ㄬ/㲧/ℓ/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic 䂻:L㺴/உ/ㄬ/㲧/ℓ/உ;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L㺴/உ/ㄬ/㲧/ℓ/உ;

    invoke-direct {v0}, L㺴/உ/ㄬ/㲧/ℓ/உ;-><init>()V

    sput-object v0, L㺴/உ/ㄬ/㲧/ℓ/உ;->䂻:L㺴/உ/ㄬ/㲧/ℓ/உ;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/facebook/internal/instrument/anrreport/ANRDetector;->உ()V

    return-void
.end method
