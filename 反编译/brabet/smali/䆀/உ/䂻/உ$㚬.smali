.class public L䆀/உ/䂻/உ$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L䆀/உ/㚬/䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L䆀/உ/䂻/உ;->䂻(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroid/content/Context;


# direct methods
.method public constructor <init>(L䆀/உ/䂻/உ;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, L䆀/உ/䂻/உ$㚬;->உ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p1, p0, L䆀/உ/䂻/உ$㚬;->உ:Landroid/content/Context;

    sget v0, L䆀/உ/䂻/㚬;->உ:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
