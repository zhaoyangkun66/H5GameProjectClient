.class public final L㚬/உ/ḓ/ḓ$䂻;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/உ/ḓ/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u40bb"
.end annotation


# instance fields
.field public உ:Landroid/content/IntentSender;

.field public 㚬:I

.field public 㺴:I

.field public 䂻:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/உ/ḓ/ḓ$䂻;->உ:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public உ()L㚬/உ/ḓ/ḓ;
    .locals 5

    new-instance v0, L㚬/உ/ḓ/ḓ;

    iget-object v1, p0, L㚬/உ/ḓ/ḓ$䂻;->உ:Landroid/content/IntentSender;

    iget-object v2, p0, L㚬/உ/ḓ/ḓ$䂻;->䂻:Landroid/content/Intent;

    iget v3, p0, L㚬/உ/ḓ/ḓ$䂻;->㚬:I

    iget v4, p0, L㚬/உ/ḓ/ḓ$䂻;->㺴:I

    invoke-direct {v0, v1, v2, v3, v4}, L㚬/உ/ḓ/ḓ;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    return-object v0
.end method

.method public 㚬(II)L㚬/உ/ḓ/ḓ$䂻;
    .locals 0

    iput p1, p0, L㚬/உ/ḓ/ḓ$䂻;->㺴:I

    iput p2, p0, L㚬/உ/ḓ/ḓ$䂻;->㚬:I

    return-object p0
.end method

.method public 䂻(Landroid/content/Intent;)L㚬/உ/ḓ/ḓ$䂻;
    .locals 0

    iput-object p1, p0, L㚬/உ/ḓ/ḓ$䂻;->䂻:Landroid/content/Intent;

    return-object p0
.end method
