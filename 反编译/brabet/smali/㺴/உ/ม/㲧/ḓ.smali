.class public final synthetic L㺴/உ/ม/㲧/ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/appevents/codeless/ViewIndexer;

.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/appevents/codeless/ViewIndexer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/㲧/ḓ;->䂻:Ljava/lang/String;

    iput-object p2, p0, L㺴/உ/ม/㲧/ḓ;->㚬:Lcom/facebook/appevents/codeless/ViewIndexer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ม/㲧/ḓ;->䂻:Ljava/lang/String;

    iget-object v1, p0, L㺴/உ/ม/㲧/ḓ;->㚬:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/ViewIndexer;->உ(Ljava/lang/String;Lcom/facebook/appevents/codeless/ViewIndexer;)V

    return-void
.end method
