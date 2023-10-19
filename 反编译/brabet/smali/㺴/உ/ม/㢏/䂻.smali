.class public final synthetic L㺴/உ/ม/㢏/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/appevents/aam/MetadataViewObserver;

.field public final synthetic 䂻:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/facebook/appevents/aam/MetadataViewObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/㢏/䂻;->䂻:Landroid/view/View;

    iput-object p2, p0, L㺴/உ/ม/㢏/䂻;->㚬:Lcom/facebook/appevents/aam/MetadataViewObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ม/㢏/䂻;->䂻:Landroid/view/View;

    iget-object v1, p0, L㺴/உ/ม/㢏/䂻;->㚬:Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {v0, v1}, Lcom/facebook/appevents/aam/MetadataViewObserver;->உ(Landroid/view/View;Lcom/facebook/appevents/aam/MetadataViewObserver;)V

    return-void
.end method
