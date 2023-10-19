.class public abstract L㚬/ཇ/உ/உ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static 䂻(L㚬/ἥ/ℓ;)L㚬/ཇ/உ/உ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "L\u36ac/\u1f25/\u2113;",
            ":",
            "L\u36ac/\u1f25/\u35aa;",
            ">(TT;)",
            "L\u36ac/\u0f47/\u0b89/\u0b89;"
        }
    .end annotation

    new-instance v0, L㚬/ཇ/உ/䂻;

    move-object v1, p0

    check-cast v1, L㚬/ἥ/㖪;

    invoke-interface {v1}, L㚬/ἥ/㖪;->getViewModelStore()L㚬/ἥ/ḙ;

    move-result-object v1

    invoke-direct {v0, p0, v1}, L㚬/ཇ/உ/䂻;-><init>(L㚬/ἥ/ℓ;L㚬/ἥ/ḙ;)V

    return-object v0
.end method


# virtual methods
.method public abstract உ(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract 㚬()V
.end method
