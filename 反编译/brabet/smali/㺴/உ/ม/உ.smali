.class public final synthetic L㺴/உ/ม/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/உ;->䂻:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, L㺴/உ/ม/உ;->䂻:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/appevents/AnalyticsUserIDStore;->உ(Ljava/lang/String;)V

    return-void
.end method
