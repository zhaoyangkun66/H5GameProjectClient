.class public final synthetic L㺴/உ/ཇ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic உ:L㺴/உ/ཇ;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L㺴/உ/ཇ;

    invoke-direct {v0}, L㺴/உ/ཇ;-><init>()V

    sput-object v0, L㺴/உ/ཇ;->உ:L㺴/உ/ཇ;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/facebook/FacebookSdk;->ℓ()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
