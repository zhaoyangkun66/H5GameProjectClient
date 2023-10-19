.class public final synthetic L㺴/உ/ม/㭲;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/㭲;->䂻:Ljava/lang/String;

    iput-object p2, p0, L㺴/உ/ม/㭲;->㚬:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ม/㭲;->䂻:Ljava/lang/String;

    iget-object v1, p0, L㺴/உ/ม/㭲;->㚬:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/appevents/UserDataStore;->உ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
