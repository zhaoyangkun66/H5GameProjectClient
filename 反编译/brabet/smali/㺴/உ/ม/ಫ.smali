.class public final synthetic L㺴/உ/ม/ಫ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/appevents/AppEventsLoggerImpl;

.field public final synthetic 䂻:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLoggerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/ಫ;->䂻:Landroid/content/Context;

    iput-object p2, p0, L㺴/உ/ม/ಫ;->㚬:Lcom/facebook/appevents/AppEventsLoggerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ม/ಫ;->䂻:Landroid/content/Context;

    iget-object v1, p0, L㺴/உ/ม/ಫ;->㚬:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl$Companion;->䂻(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLoggerImpl;)V

    return-void
.end method
