.class public final synthetic L㺴/உ/ㄬ/㲧/ㄏ/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic உ:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ㄬ/㲧/ㄏ/உ;->உ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, L㺴/உ/ㄬ/㲧/ㄏ/உ;->உ:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;->உ(Ljava/util/List;Lcom/facebook/GraphResponse;)V

    return-void
.end method
