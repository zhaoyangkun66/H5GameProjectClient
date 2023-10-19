.class public final synthetic L㺴/உ/ㄬ/㲧/ಫ/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic உ:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ㄬ/㲧/ಫ/䂻;->உ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, L㺴/உ/ㄬ/㲧/ಫ/䂻;->உ:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->䂻(Ljava/util/ArrayList;Lcom/facebook/GraphResponse;)V

    return-void
.end method
