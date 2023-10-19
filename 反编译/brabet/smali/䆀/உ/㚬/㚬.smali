.class public L䆀/உ/㚬/㚬;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static 㚬:L䆀/உ/㚬/㚬;


# instance fields
.field public உ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "L\u4180/\u0b89/\u36ac/\u40bb;",
            ">;"
        }
    .end annotation
.end field

.field public 䂻:L䆀/உ/㚬/உ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, L䆀/உ/㚬/㚬;->உ:Ljava/util/HashMap;

    return-void
.end method

.method public static 㚬()L䆀/உ/㚬/㚬;
    .locals 1

    sget-object v0, L䆀/உ/㚬/㚬;->㚬:L䆀/உ/㚬/㚬;

    if-nez v0, :cond_0

    new-instance v0, L䆀/உ/㚬/㚬;

    invoke-direct {v0}, L䆀/உ/㚬/㚬;-><init>()V

    sput-object v0, L䆀/உ/㚬/㚬;->㚬:L䆀/உ/㚬/㚬;

    :cond_0
    sget-object v0, L䆀/உ/㚬/㚬;->㚬:L䆀/உ/㚬/㚬;

    return-object v0
.end method


# virtual methods
.method public உ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, L䆀/உ/㚬/㚬;->䂻:L䆀/உ/㚬/உ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, L䆀/உ/㚬/உ;->உ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ḓ(Ljava/lang/String;L䆀/உ/㚬/䂻;)V
    .locals 1

    iget-object v0, p0, L䆀/உ/㚬/㚬;->உ:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public 㺴(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, L䆀/உ/㚬/㚬;->உ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public 䂻(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, L䆀/உ/㚬/㚬;->உ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, L䆀/உ/㚬/䂻;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, L䆀/உ/㚬/䂻;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public 䆀(L䆀/உ/㚬/உ;)V
    .locals 0

    iput-object p1, p0, L䆀/உ/㚬/㚬;->䂻:L䆀/உ/㚬/உ;

    return-void
.end method
